import 'package:firebase_test/src/domain/entities/webcam.dart';
import 'package:firebase_test/src/domain/repositories/webcam_repository_contract.dart';

class GetWebcams {
  
  final WebcamRespositoryContract _webcamRepositoryContract;

  GetWebcams(this._webcamRepositoryContract);

  Future<List<Webcam>> call() async {
    var webcams = <Webcam>[];
    try {
      webcams = await _webcamRepositoryContract.getWebcams();      
    } catch (e) {
      throw Exception("UseCase.GetWebcams: ${e.toString()}");
    }
    return webcams;
  }

}