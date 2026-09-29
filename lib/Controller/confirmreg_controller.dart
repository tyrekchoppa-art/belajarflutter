import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String email;
  late String jenisKelamin;
  late String hobi;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    email = arguments['email'];
    jenisKelamin = arguments['jenis_kelamin'];
    hobi = arguments['hobi'];
  }
}