import 'dart:convert';
import 'dart:ffi';

List<PhoneModel> phoneModelFromJson(String str) =>
    List<PhoneModel>.from(json.decode(str).map((x) => PhoneModel.fromJson(x)));

String phoneModelToJson(List<PhoneModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PhoneModel {
  String? id;
  String? name;
  Data? data;

  PhoneModel({
    this.id,
    this.name,
    this.data,
  });

  factory PhoneModel.fromJson(Map<String, dynamic> json) => PhoneModel(
        id: json["id"],
        name: json["name"],
        data: json['data'] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "data": data?.toJson(),
      };
}

class Data {
  String? dataColor;
  String? dataCapacity;
  int? capacityGb;
  dynamic dataPrice;
  String? dataGeneration;
  int? year;
  String? cpuModel;
  String? hardDiskSize;
  String? strapColour;
  String? caseSize;
  String? color;
  String? description;
  String? capacity;
  dynamic screenSize;
  String? generation;
  double? price;

  Data({
    this.dataColor,
    this.dataCapacity,
    this.capacityGb,
    this.dataPrice,
    this.dataGeneration,
    this.year,
    this.cpuModel,
    this.hardDiskSize,
    this.strapColour,
    this.caseSize,
    this.color,
    this.description,
    this.capacity,
    this.screenSize,
    this.generation,
    this.price,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        dataColor: json["color"],
        dataCapacity: json["capacity"],
        capacityGb: json["capacity GB"],
        dataPrice: json["price"],
        dataGeneration: json["generation"],
        year: json["year"],
        cpuModel: json["CPU model"],
        hardDiskSize: json["Hard disk size"],
        strapColour: json["Strap Colour"],
        caseSize: json["Case Size"],
        color: json["Color"],
        description: json["Description"],
        capacity: json["Capacity"],
        screenSize: json["Screen size"],
        generation: json["Generation"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "color": dataColor,
        "capacity": dataCapacity,
        "capacity GB": capacityGb,
        "price": dataPrice,
        "generation": dataGeneration,
        "year": year,
        "CPU model": cpuModel,
        "Hard disk size": hardDiskSize,
        "Strap Colour": strapColour,
        "Case Size": caseSize,
        "Color": color,
        "Description": description,
        "Capacity": capacity,
        "Screen size": screenSize,
        "Generation": generation,
        "Price": price,
      };
}
