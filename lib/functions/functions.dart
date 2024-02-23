import 'package:figma/classes/user.dart';
import 'package:figma/services/http_services.dart';

Future<dynamic> registerUser(firstName, lastName, email, phone, password, confirmPassword) async {
  if(password != confirmPassword){
    print("Password Wrong");
    return "Password doesn't match";
  }

  User user = User(firstName, lastName, email, phone, password);

  int? request = await createUser(user);

  if(200 == request){
    print("User Registered Successfully");
    return user;
  } else {
    print("Failed to Register!");
    return 0;
  }
}

Future<dynamic> loginUser(email, password) async {
  User user = User(null, null, email, null, password);

  int? request = await verifyUser(user);

  if(200 == request){
    print("User Logged In Successfully");
    return user;
  }

  else{
    print("Failed To Logged In");
    return null;
  }

} 