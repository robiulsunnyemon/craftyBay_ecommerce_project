class SliderModel {
  String? msg;
  List<SliderData>? sliderList;

  SliderModel({this.msg, this.sliderList});

  SliderModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      sliderList = <SliderData>[];
      json['data'].forEach((v) {
        sliderList!.add(SliderData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (this.sliderList != null) {
      data['data'] = this.sliderList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderData {
  int? id;
  String? title;
  String? shortDes;
  String? price;
  String? image;
  int? productId;
  String? createdAt;
  String? updatedAt;

  SliderData(
      {this.id,
        this.title,
        this.shortDes,
        this.price,
        this.image,
        this.productId,
        this.createdAt,
        this.updatedAt});

  SliderData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    shortDes = json['short_des'];
    price = json['price'];
    image = json['image'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['short_des'] = shortDes;
    data['price'] = price;
    data['image'] = image;
    data['product_id'] = productId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}