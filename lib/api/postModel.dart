class PostModel{
  int id;
  String title,shortDescription,description,image;

  PostModel(
  this.id, this.title, this.shortDescription, this.description, this.image);


  PostModel.fromJson(Map <String,dynamic> map) {

    this.id = map['id'];
    this.title = map['title'];
    this.shortDescription = map['shortDescription'];
    this.description = map['description'];
    this.image = map['image']['url'];



  }
}