// {
//  "name": "Open Graph Test User",
//  "email": "open_jygexjs_user@tfbnw.net",
//  "picture": {
//    "data": {
//      "height": 126,
//      "url": "https://scontent.fuio21-1.fna.fbcdn.net/v/t1.30497-1/s200x200/84628273_176159830277856_972693363922829312_n.jpg",
//      "width": 200
//    }
//  },
//  "id": "136742241592917"
// }

class FaceBookModel {
  final String? name;
  final String? email;
  final String? id;
  final FaceBookPhotoModel? faceBookPhotoModel;

  FaceBookModel({this.name, this.email, this.id, this.faceBookPhotoModel});

  factory FaceBookModel.fromJson(Map<String, dynamic> json) => FaceBookModel(
        email: json['email'],
        name: json['name'],
        id: json['id'],
        faceBookPhotoModel:
            FaceBookPhotoModel.fromJson(json['picture']['data']),
      );
}

class FaceBookPhotoModel {
  final String? url;
  final int? height;
  final int? widht;

  FaceBookPhotoModel({this.url, this.height, this.widht});

  factory FaceBookPhotoModel.fromJson(Map<String, dynamic> json) =>
      FaceBookPhotoModel(
        url: json['url'],
        widht: json['width'],
        height: json['height'],
      );
}
