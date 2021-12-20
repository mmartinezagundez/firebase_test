import 'package:firebase_test/src/domain/entities/webcam.dart';

abstract class WebcamRespositoryContract {
  
  Future<List<Webcam>> getWebcams(
    {
      String? textSearch,    
      int? limit,
      int? startAfter
    }
  );

}