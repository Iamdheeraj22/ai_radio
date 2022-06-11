import 'dart:convert';

import 'package:flutter/foundation.dart';

class RadioList {
  List<MyRadio> radioList;
  RadioList({
    required this.radioList,
  });
  RadioList copyWith({
    List<MyRadio>? radioList,
  }) {
    return RadioList(
      radioList: radioList ?? this.radioList,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'radioList': radioList.map((x) => x.toMap()).toList()});

    return result;
  }

  factory RadioList.fromMap(Map<String, dynamic> map) {
    return RadioList(
      radioList:
          List<MyRadio>.from(map['radioList']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RadioList.fromJson(String source) =>
      RadioList.fromMap(json.decode(source));

  @override
  String toString() => 'RadioList(radioList: $radioList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RadioList && listEquals(other.radioList, radioList);
  }

  @override
  int get hashCode => radioList.hashCode;
}

class MyRadio {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String color;
  final String desc;
  final String icon;
  final String image;
  final String lang;
  final String category;
  final String disliked;
  MyRadio({
    required this.id,
    required this.order,
    required this.name,
    required this.tagline,
    required this.color,
    required this.desc,
    required this.icon,
    required this.image,
    required this.lang,
    required this.category,
    required this.disliked,
  });

  MyRadio copyWith({
    int? id,
    int? order,
    String? name,
    String? tagline,
    String? color,
    String? desc,
    String? icon,
    String? image,
    String? lang,
    String? category,
    String? disliked,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      icon: icon ?? this.icon,
      image: image ?? this.image,
      lang: lang ?? this.lang,
      category: category ?? this.category,
      disliked: disliked ?? this.disliked,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'order': order});
    result.addAll({'name': name});
    result.addAll({'tagline': tagline});
    result.addAll({'color': color});
    result.addAll({'desc': desc});
    result.addAll({'icon': icon});
    result.addAll({'image': image});
    result.addAll({'lang': lang});
    result.addAll({'category': category});
    result.addAll({'disliked': disliked});

    return result;
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id']?.toInt() ?? 0,
      order: map['order']?.toInt() ?? 0,
      name: map['name'] ?? '',
      tagline: map['tagline'] ?? '',
      color: map['color'] ?? '',
      desc: map['desc'] ?? '',
      icon: map['icon'] ?? '',
      image: map['image'] ?? '',
      lang: map['lang'] ?? '',
      category: map['category'] ?? '',
      disliked: map['disliked'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) =>
      MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, order: $order, name: $name, tagline: $tagline, color: $color, desc: $desc, icon: $icon, image: $image, lang: $lang, category: $category, disliked: $disliked)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyRadio &&
        other.id == id &&
        other.order == order &&
        other.name == name &&
        other.tagline == tagline &&
        other.color == color &&
        other.desc == desc &&
        other.icon == icon &&
        other.image == image &&
        other.lang == lang &&
        other.category == category &&
        other.disliked == disliked;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        order.hashCode ^
        name.hashCode ^
        tagline.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        icon.hashCode ^
        image.hashCode ^
        lang.hashCode ^
        category.hashCode ^
        disliked.hashCode;
  }
}
