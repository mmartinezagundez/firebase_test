
import 'package:firebase_test/src/domain/repositories/webcam_repository_contract.dart';
import 'package:firebase_test/src/domain/usecases/get_webcams.dart';
import 'package:get/get.dart';

import 'data/repositories/webcam_repository.dart';

Future<void> init() async {  

  /* Repository */
  Get.put<WebcamRespositoryContract>(WebcamRepository(), permanent: true);

  /* Use Cases */
  Get.put<GetWebcams>(GetWebcams(Get.find()), permanent: true);

}