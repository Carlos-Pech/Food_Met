class Platillo {
  Id? iId;
  String? name;
  String? description;
  int? price;
  int? totalCalories;
  bool? inCart;
  bool? nutrition;
  Category? category;
  Category? subcategory;
  bool? status;
  List<Ingredients>? ingredients;
  String? image;
  int? time;

  Platillo(
      {this.iId,
      this.name,
      this.description,
      this.price,
      this.totalCalories,
      this.inCart,
      this.nutrition,
      this.category,
      this.subcategory,
      this.status,
      this.ingredients,
      this.image,
      this.time});

  Platillo.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    name = json['name'];
    description = json['description'];
    price = json['price'];
    totalCalories = json['totalCalories'];
    inCart = json['inCart'];
    nutrition = json['nutrition'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    subcategory = json['subcategory'] != null
        ? new Category.fromJson(json['subcategory'])
        : null;
    status = json['status'];
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v));
      });
    }
    image = json['image'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId!.toJson();
    }
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['totalCalories'] = this.totalCalories;
    data['inCart'] = this.inCart;
    data['nutrition'] = this.nutrition;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.subcategory != null) {
      data['subcategory'] = this.subcategory!.toJson();
    }
    data['status'] = this.status;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    data['image'] = this.image;
    data['time'] = this.time;
    return data;
  }
}

class Id {
  String? oid;

  Id({this.oid});

  Id.fromJson(Map<String, dynamic> json) {
    oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this.oid;
    return data;
  }
}

class Category {
  String? sId;
  String? name;

  Category({this.sId, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class Ingredients {
  String? name;
  int? calories;
  int? weight;
  int? calorieUnit;

  Ingredients({this.name, this.calories, this.weight, this.calorieUnit});

  Ingredients.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    calories = json['calories'];
    weight = json['weight'];
    calorieUnit = json['calorieUnit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['calories'] = this.calories;
    data['weight'] = this.weight;
    data['calorieUnit'] = this.calorieUnit;
    return data;
  }
}