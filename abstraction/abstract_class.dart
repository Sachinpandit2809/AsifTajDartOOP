void main() {
  NetworkApiServices networkApiServices = NetworkApiServices();
  Map<String, String> data = {'name': 'sachin'};
  networkApiServices.postApiServices(data);
}

abstract class BaseApiServices {
  void postApiServices(var data);
  void getApiServices();
}

class NetworkApiServices extends BaseApiServices {
  @override
  void getApiServices() {
    // TODO: implement getApiServices
  }

  @override
  void postApiServices(var data) async {
    // TODO: implement postApiServices
    print("api hitted");
    await Future.delayed(Duration(seconds: 3));
    print("helo boiz");
    print(data['name']);
  }
}
