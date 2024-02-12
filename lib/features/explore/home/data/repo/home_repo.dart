import 'package:flutter_grad_project/core/api/api_services.dart';

class HomeRepository {
  final ApiServices apiServices;

  HomeRepository(this.apiServices);

  Future<dynamic> getHomeData() async {
    Map<String, dynamic> response =
        await apiServices.get("/api/PatientMobile/Department/GetAll");
    print(response.toString());

    return response;
  }

  Future<dynamic> addDate({String? data, String? name}) async {
    Map<String, dynamic> response =
        await apiServices.post("link Post", body: {"name": name, "data": data}
            // isFromData: true,
            );
    print(response.toString());

    return response;
  }
}
