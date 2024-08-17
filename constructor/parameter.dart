void main() {
  Parameter(email: "sachinPandit2809@gmail.com");
  Parameter p = Parameter(email: "rahul");
  p.email = "ravan";
  print(p.email);
}

class Parameter {
  String name;
  int age;
  String email;
  Parameter({this.age = 12, this.name = '', required this.email}) {
    print('name = $email , age = $age , email = $email');
    
  }
}
