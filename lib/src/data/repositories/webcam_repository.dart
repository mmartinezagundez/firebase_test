import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_test/src/data/models/webcam.dart';
import 'package:firebase_test/src/domain/entities/webcam.dart';
import 'package:firebase_test/src/domain/repositories/webcam_repository_contract.dart';

class WebcamRepository extends WebcamRespositoryContract {

  FirebaseFirestore _fireStoneInstance = FirebaseFirestore.instance;

  @override
  Future<List<Webcam>> getWebcams({String? textSearch, int? limit, int? startAfter}) async {
    
    var webcams = <WebcamModel>[];
    await _fireStoneInstance.collection("webcams").get().then(
      (querySnapshot) => querySnapshot.docs.forEach(
        (webCamQuerySnapShot) {
          webcams.add(WebcamModel.fromDocumentSnapShot((webCamQuerySnapShot)));
        })
    );
    return webcams;

  }
  
}