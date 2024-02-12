import 'package:flutter_grad_project/core/api/dio_consumer.dart';

class HomeRepository {
  final DioConsumer dioConsumer;

  HomeRepository(this.dioConsumer);

  Future<dynamic> getHomeData() async {
    Map<String, dynamic> response =
        await dioConsumer.get("/api/PatientMobile/Department/GetAll");
    print(response.toString());

    return response;
  }

  Future<dynamic> addDate({String? data, String? name}) async {
    Map<String, dynamic> response =
        await dioConsumer.post("link Post", body: {"name": name, "data": data}
            // isFromData: true,
            );
    print(response.toString());

    return response;
  }
}
