import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_test/src/domain/entities/webcam.dart';

class WebcamModel extends Webcam {
  
  WebcamModel({
    required String id,
    required String name,
    required String url,
    String? description
  }) : super(
    id: id,
    name: name,
    url: url,
    description: description
  );

  factory WebcamModel.fromJson(Map<String, dynamic> json) {
    return WebcamModel(
      id: json['id'], 
      name: json['name'], 
      url: json['url'],
      description: json['description']);
  }

  factory WebcamModel.fromDocumentSnapShot(DocumentSnapshot documentSnapshot) {
    final webCam = WebcamModel.fromJson(documentSnapshot.data() as Map<String, dynamic>);
    webCam.id = documentSnapshot.reference.id;
    return webCam;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
        'descripcion': description,        
      };

}