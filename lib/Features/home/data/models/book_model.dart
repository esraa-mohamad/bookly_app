import 'volume_info.dart';
import 'sale_info.dart';
import 'access_info.dart';
import 'search_info.dart';

class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      required this.volumeInfo,
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  factory BookModel.fromJson(Map<String , dynamic> json) => BookModel(
      kind : json['kind'],
      id : json['id'],
      etag : json['etag'],
  selfLink : json['selfLink'],
  // volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
  volumeInfo : VolumeInfo.fromJson(json['volumeInfo']),
  saleInfo : json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null,
  accessInfo : json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null,
  searchInfo : json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null,
  );
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    map['volumeInfo'] = volumeInfo.toJson();
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}