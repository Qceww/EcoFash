import 'package:figma/classes/user.dart';
import 'package:figma/services/http_services.dart';

Future<String?> registerUser(firstName, lastName, email, phone, password, confirmPassword) async {
  if(password != confirmPassword){
    print("Password Wrong");
    return "Password doesn't match";
  }

  User user = User(firstName, lastName, email, phone, password);

  int request = createUser(user) as int;

  
}