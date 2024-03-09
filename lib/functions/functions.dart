import 'package:figma/classes/address.dart';
import 'package:figma/classes/blog.dart';
import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/colors.dart';
import 'package:figma/classes/order.dart';
import 'package:figma/classes/orderItem.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/classes/redeemedReward.dart';
import 'package:figma/classes/reward.dart';
import 'package:figma/classes/user.dart';
import 'package:figma/classes/wishlist.dart';
import 'package:figma/services/http_services.dart';

User? currentUser;
Reward? reward;
Address? addressNow;

Future<dynamic> registerUser(
    firstName, lastName, email, phone, password, confirmPassword) async {
  if (password != confirmPassword) {
    print("Password Wrong");
    return "Password doesn't match";
  }

  User user = User(null, firstName, lastName, email, phone, password, 0);

  int? request = await createUser(user);

  if (200 == request) {
    print("User Registered Successfully");
    return user;
  } else {
    print("Failed to Register!");
    return 0;
  }
}

Future<dynamic> loginUser(email, password) async {
  User user = User(null, null, null, email, null, password, 0);

  dynamic request = await verifyUser(user);

  if (request is User) {
    // print("ok");

    User currentUser = User(request.userId, request.firstName, request.lastName,
        request.email, request.phone, request.password, request.memberPoint);
    return currentUser;
  } else {
    print("Failed To Logged In");
    return null;
  }
}

Future<List<Product>?> getProduct() async {
  List<Product>? request = await getProducts();

  if (request != null) {
    // print(request);
    return request;
  } else {
    return null;
  }
}

Future<Product?> getDetailedProduct(id) async {
  Product product =
      Product(id, null, null, null, null, null, null, null, null, null, null);

  Product? request = await getDetailedProducts(product);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<ColorClass>?> getAllColor() async {
  List<ColorClass>? request = await getAllColors();

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<CartProduct>?> getCart() async {
  List<CartProduct>? request = await getCarts(1);
  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<int?> updateQuantityCart(CartProduct cartProduct) async {
  int? request = await updateQuantityCarts(cartProduct);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<int?> updateCheckedCart(CartProduct cartProduct) async {
  int? request = await updateQuantityCarts(cartProduct);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<int?> deleteCart(int cartId) async {
  int? request = await deleteCarts(cartId);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<Address>?> getAddress(int customerId) async {
  List<Address>? request = await getAddresses(customerId);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<Address?> getDetailedAddress(int addressId) async {
  Address? request = await getDetailedAddresses(addressId);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<RedeemedReward>?> getRedeemedRewards(int customerId) async {
  List<RedeemedReward>? request = await getRedeemedReward(customerId);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<Reward>?> getRewards() async {
  List<Reward>? request = await getReward();

  if (request != null) {
    // print(request);
    return request;
  } else {
    return null;
  }
}

Future<List<Wishlist>?> getWishlists(int customerId) async {
  List<Wishlist>? request = await getWishlist(customerId);

  // print(request);
  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Reward? putPromo(Reward? promo) {
  reward = promo;
  if (reward != null) {
    return reward;
  }
  return null;
}

Reward? getPromo() {
  return reward;
}

void removePromo() {
  reward = null;
}

Address? putAddressNow(Address? address) {
  addressNow = address;
  if (addressNow != null) {
    return addressNow;
  }
  return null;
}

Address? getAddressNow() {
  return addressNow;
}

void removeAddressNow() {
  addressNow = null;
}

Future<int?> createOrder(Order order) async {
  int? request = await createOrders(order);
  if (request == 400) {
    return null;
  } else {
    return request;
  }
}

Future<int?> createOrderItem(OrderItem orderItem) async {
  int? request = await createOrderItems(orderItem);
  if (request == 400) {
    return null;
  } else {
    return 200;
  }
}

Future<List<Order>?> getOrder(int customerId) async {
  List<Order>? request = await getOrders(customerId);
  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<OrderItem>?> getOrderItem(int orderId) async {
  List<OrderItem>? request = await getOrderItems(orderId);
  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<List<Blog>?> getBlog() async {
  List<Blog>? request = await getBlogs();

  if (request != null) {
    // print(request);
    return request;
  } else {
    return null;
  }
}

Future<Blog?> getDetailedBlog(id) async {
  Blog blog = Blog(id, null, null, null, null, null, null, null);

  Blog? request = await getDetailedBlogs(blog);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}

Future<int?> updateQuantityProduct(Product product) async {
  int? request = await updateQuantityProducts(product);

  if (request != null) {
    return request;
  } else {
    return null;
  }
}