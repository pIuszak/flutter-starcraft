import 'package:flutter/material.dart';

class User {

  final String name;
  final String surname;
  final String unitType;

  User({@required this.name, this.surname,  this.unitType});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
        name: json['name'],
        surname: json['surname'],
        unitType: json['unitType']
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'name': name,
      'surname':surname,
      'unitType':unitType
    };
  }
}