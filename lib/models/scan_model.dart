// To parse this JSON data, do
//    https://app.quicktype.io/
//     final scanModel = scanModelFromJson(jsonString);

import 'dart:convert';

import 'package:meta/meta.dart';

ScanModel scanModelFromJson(String str) => ScanModel.fromJson(json.decode(str));

String scanModelToJson(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  ScanModel({
    this.id,
    this.tipo,
    @required this.valor,
  }) {
    this.tipo = this.tipo!.contains('http') ? 'http' : 'geo';
  }

  int? id;
  String? tipo;
  String? valor;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
