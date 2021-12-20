class Webcam {
  
  String id;
  String name;
  String? description;
  String url;

  Webcam({
    required this.id,
    required this.name,
    required this.url,
    this.description
  });

  factory Webcam.empty() {
    return Webcam(id: "", name: "", url: "");
  }

}