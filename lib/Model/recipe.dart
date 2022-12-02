import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class recipe {
  int? id;
  String? dishName;
  String? dishType;
  String? dishImg;
  String? dishDisc;
  String? dishPrep;
  bool? isFav;
  Map<String, String>? dishIng;
  Map<String, String>? dishInfo;
  recipe(
      {this.id,
      this.dishName,
      this.dishType,
      this.dishImg,
      this.dishDisc,
      this.dishPrep,
      this.dishIng,
      this.dishInfo,
      this.isFav});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'dishName': dishName,
      'dishType': dishType,
      'dishImg': dishImg,
      'dishDisc': dishDisc,
      'dishPrep': dishPrep,
      'dishIng': dishIng,
      'dishInfo': dishInfo,
      'isFav': isFav
    };
  }

  factory recipe.fromMap(Map<String, dynamic> map) {
    return recipe(
      id: map['id']?.toInt(),
      dishName: map['dishName'],
      dishType: map['dishType'],
      dishImg: map['dishImg'],
      dishDisc: map['dishDisc'],
      dishPrep: map['dishPrep'],
      dishIng: map['dishIng'],
      dishInfo: map['dishInfo'],
      isFav: map['isFav'],
    );
  }
}
