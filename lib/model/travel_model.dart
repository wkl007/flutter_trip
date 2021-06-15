import 'dart:convert';

import 'package:flutter_trip/util/index.dart';

/// 旅拍页模型
class TravelModel {
  int totalCount;
  List<TravelItem> resultList;

  TravelModel({
    required this.totalCount,
    required this.resultList,
  });

  factory TravelModel.fromJson(Map<String, dynamic> jsonRes) {
    final List<TravelItem>? resultList =
        jsonRes['resultList'] is List ? <TravelItem>[] : null;
    if (resultList != null) {
      for (final dynamic item in jsonRes['resultList']!) {
        if (item != null) {
          resultList.add(TravelItem.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return TravelModel(
      totalCount: asT<int>(jsonRes['totalCount'])!,
      resultList: resultList!,
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'totalCount': totalCount,
        'resultList': resultList,
      };

  TravelModel clone() => TravelModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class TravelItem {
  int type;
  Article article;

  TravelItem({
    required this.type,
    required this.article,
  });

  factory TravelItem.fromJson(Map<String, dynamic> jsonRes) => TravelItem(
        type: asT<int>(jsonRes['type'])!,
        article:
            Article.fromJson(asT<Map<String, dynamic>>(jsonRes['article'])!),
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'article': article,
      };

  TravelItem clone() => TravelItem.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Article {
  int articleId;
  int productType;
  int sourceType;
  String articleTitle;
  Author author;
  List<Images> images;
  bool hasVideo;
  int readCount;
  int likeCount;
  int commentCount;
  List<Urls> urls;
  List<Tags> tags;
  List<Topics> topics;
  List<Pois> pois;
  String publishTime;
  String publishTimeDisplay;
  String shootTime;
  String shootTimeDisplay;
  int level;
  String distanceText;
  bool isLike;
  int imageCounts;
  bool isCollected;
  int collectCount;
  int articleStatus;
  String poiName;

  Article({
    required this.articleId,
    required this.productType,
    required this.sourceType,
    required this.articleTitle,
    required this.author,
    required this.images,
    required this.hasVideo,
    required this.readCount,
    required this.likeCount,
    required this.commentCount,
    required this.urls,
    required this.tags,
    required this.topics,
    required this.pois,
    required this.publishTime,
    required this.publishTimeDisplay,
    required this.shootTime,
    required this.shootTimeDisplay,
    required this.level,
    required this.distanceText,
    required this.isLike,
    required this.imageCounts,
    required this.isCollected,
    required this.collectCount,
    required this.articleStatus,
    required this.poiName,
  });

  factory Article.fromJson(Map<String, dynamic> jsonRes) {
    final List<Images>? images = jsonRes['images'] is List ? <Images>[] : null;
    if (images != null) {
      for (final dynamic item in jsonRes['images']!) {
        if (item != null) {
          images.add(Images.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    final List<Urls>? urls = jsonRes['urls'] is List ? <Urls>[] : null;
    if (urls != null) {
      for (final dynamic item in jsonRes['urls']!) {
        if (item != null) {
          urls.add(Urls.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    final List<Tags>? tags = jsonRes['tags'] is List ? <Tags>[] : null;
    if (tags != null) {
      for (final dynamic item in jsonRes['tags']!) {
        if (item != null) {
          tags.add(Tags.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    final List<Topics>? topics = jsonRes['topics'] is List ? <Topics>[] : null;
    if (topics != null) {
      for (final dynamic item in jsonRes['topics']!) {
        if (item != null) {
          topics.add(Topics.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    final List<Pois>? pois = jsonRes['pois'] is List ? <Pois>[] : null;
    if (pois != null) {
      for (final dynamic item in jsonRes['pois']!) {
        if (item != null) {
          pois.add(Pois.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return Article(
      articleId: asT<int>(jsonRes['articleId'])!,
      productType: asT<int>(jsonRes['productType'])!,
      sourceType: asT<int>(jsonRes['sourceType'])!,
      articleTitle: asT<String>(jsonRes['articleTitle'])!,
      author: Author.fromJson(asT<Map<String, dynamic>>(jsonRes['author'])!),
      images: images!,
      hasVideo: asT<bool>(jsonRes['hasVideo'])!,
      readCount: asT<int>(jsonRes['readCount'])!,
      likeCount: asT<int>(jsonRes['likeCount'])!,
      commentCount: asT<int>(jsonRes['commentCount'])!,
      urls: urls!,
      tags: tags!,
      topics: topics!,
      pois: pois!,
      publishTime: asT<String>(jsonRes['publishTime'])!,
      publishTimeDisplay: asT<String>(jsonRes['publishTimeDisplay'])!,
      shootTime: asT<String>(jsonRes['shootTime'])!,
      shootTimeDisplay: asT<String>(jsonRes['shootTimeDisplay'])!,
      level: asT<int>(jsonRes['level'])!,
      distanceText: asT<String>(jsonRes['distanceText'])!,
      isLike: asT<bool>(jsonRes['isLike'])!,
      imageCounts: asT<int>(jsonRes['imageCounts'])!,
      isCollected: asT<bool>(jsonRes['isCollected'])!,
      collectCount: asT<int>(jsonRes['collectCount'])!,
      articleStatus: asT<int>(jsonRes['articleStatus'])!,
      poiName: asT<String>(jsonRes['poiName'])!,
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'articleId': articleId,
        'productType': productType,
        'sourceType': sourceType,
        'articleTitle': articleTitle,
        'author': author,
        'images': images,
        'hasVideo': hasVideo,
        'readCount': readCount,
        'likeCount': likeCount,
        'commentCount': commentCount,
        'urls': urls,
        'tags': tags,
        'topics': topics,
        'pois': pois,
        'publishTime': publishTime,
        'publishTimeDisplay': publishTimeDisplay,
        'shootTime': shootTime,
        'shootTimeDisplay': shootTimeDisplay,
        'level': level,
        'distanceText': distanceText,
        'isLike': isLike,
        'imageCounts': imageCounts,
        'isCollected': isCollected,
        'collectCount': collectCount,
        'articleStatus': articleStatus,
        'poiName': poiName,
      };

  Article clone() => Article.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Author {
  int authorId;
  String nickName;
  String clientAuth;
  String jumpUrl;
  CoverImage coverImage;

  Author({
    required this.authorId,
    required this.nickName,
    required this.clientAuth,
    required this.jumpUrl,
    required this.coverImage,
  });

  factory Author.fromJson(Map<String, dynamic> jsonRes) {
    return Author(
      authorId: asT<int>(jsonRes['authorId'])!,
      nickName: asT<String>(jsonRes['nickName'])!,
      clientAuth: asT<String>(jsonRes['clientAuth'])!,
      jumpUrl: asT<String>(jsonRes['jumpUrl'])!,
      coverImage: CoverImage.fromJson(
          asT<Map<String, dynamic>>(jsonRes['coverImage'])!),
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'authorId': authorId,
        'nickName': nickName,
        'clientAuth': clientAuth,
        'jumpUrl': jumpUrl,
        'coverImage': coverImage,
      };

  Author clone() =>
      Author.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class CoverImage {
  String dynamicUrl;
  String originalUrl;

  CoverImage({
    required this.dynamicUrl,
    required this.originalUrl,
  });

  factory CoverImage.fromJson(Map<String, dynamic> jsonRes) => CoverImage(
        dynamicUrl: asT<String>(jsonRes['dynamicUrl'])!,
        originalUrl: asT<String>(jsonRes['originalUrl'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'dynamicUrl': dynamicUrl,
        'originalUrl': originalUrl,
      };

  CoverImage clone() => CoverImage.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Images {
  int imageId;
  String dynamicUrl;
  String originalUrl;
  double width;
  double height;
  int mediaType;
  double lat;
  double lon;

  Images({
    required this.imageId,
    required this.dynamicUrl,
    required this.originalUrl,
    required this.width,
    required this.height,
    required this.mediaType,
    required this.lat,
    required this.lon,
  });

  factory Images.fromJson(Map<String, dynamic> jsonRes) => Images(
        imageId: asT<int>(jsonRes['imageId'])!,
        dynamicUrl: asT<String>(jsonRes['dynamicUrl'])!,
        originalUrl: asT<String>(jsonRes['originalUrl'])!,
        width: asT<double>(jsonRes['width'])!,
        height: asT<double>(jsonRes['height'])!,
        mediaType: asT<int>(jsonRes['mediaType'])!,
        lat: asT<double>(jsonRes['lat'])!,
        lon: asT<double>(jsonRes['lon'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'imageId': imageId,
        'dynamicUrl': dynamicUrl,
        'originalUrl': originalUrl,
        'width': width,
        'height': height,
        'mediaType': mediaType,
        'lat': lat,
        'lon': lon,
      };

  Images clone() =>
      Images.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Urls {
  String version;
  String appUrl;
  String h5Url;
  String wxUrl;

  Urls({
    required this.version,
    required this.appUrl,
    required this.h5Url,
    required this.wxUrl,
  });

  factory Urls.fromJson(Map<String, dynamic> jsonRes) => Urls(
        version: asT<String>(jsonRes['version'])!,
        appUrl: asT<String>(jsonRes['appUrl'])!,
        h5Url: asT<String>(jsonRes['h5Url'])!,
        wxUrl: asT<String>(jsonRes['wxUrl'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'version': version,
        'appUrl': appUrl,
        'h5Url': h5Url,
        'wxUrl': wxUrl,
      };

  Urls clone() =>
      Urls.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Tags {
  int tagId;
  String tagName;
  int tagLevel;
  int parentTagId;
  int source;
  int sortIndex;

  Tags({
    required this.tagId,
    required this.tagName,
    required this.tagLevel,
    required this.parentTagId,
    required this.source,
    required this.sortIndex,
  });

  factory Tags.fromJson(Map<String, dynamic> jsonRes) => Tags(
        tagId: asT<int>(jsonRes['tagId'])!,
        tagName: asT<String>(jsonRes['tagName'])!,
        tagLevel: asT<int>(jsonRes['tagLevel'])!,
        parentTagId: asT<int>(jsonRes['parentTagId'])!,
        source: asT<int>(jsonRes['source'])!,
        sortIndex: asT<int>(jsonRes['sortIndex'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'tagId': tagId,
        'tagName': tagName,
        'tagLevel': tagLevel,
        'parentTagId': parentTagId,
        'source': source,
        'sortIndex': sortIndex,
      };

  Tags clone() =>
      Tags.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Topics {
  int topicId;
  String topicName;
  int level;

  Topics({
    required this.topicId,
    required this.topicName,
    required this.level,
  });

  factory Topics.fromJson(Map<String, dynamic> jsonRes) => Topics(
        topicId: asT<int>(jsonRes['topicId'])!,
        topicName: asT<String>(jsonRes['topicName'])!,
        level: asT<int>(jsonRes['level'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'topicId': topicId,
        'topicName': topicName,
        'level': level,
      };

  Topics clone() =>
      Topics.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Pois {
  int poiType;
  int poiId;
  String poiName;
  int districtId;
  String districtName;
  PoiExt poiExt;
  int source;
  int isMain;
  bool isInChina;

  Pois({
    required this.poiType,
    required this.poiId,
    required this.poiName,
    required this.districtId,
    required this.districtName,
    required this.poiExt,
    required this.source,
    required this.isMain,
    required this.isInChina,
  });

  factory Pois.fromJson(Map<String, dynamic> jsonRes) {
    return Pois(
      poiType: asT<int>(jsonRes['poiType'])!,
      poiId: asT<int>(jsonRes['poiId'])!,
      poiName: asT<String>(jsonRes['poiName'])!,
      districtId: asT<int>(jsonRes['districtId'])!,
      districtName: asT<String>(jsonRes['districtName'])!,
      poiExt: PoiExt.fromJson(asT<Map<String, dynamic>>(jsonRes['poiExt'])!),
      source: asT<int>(jsonRes['source'])!,
      isMain: asT<int>(jsonRes['isMain'])!,
      isInChina: asT<bool>(jsonRes['isInChina'])!,
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'poiType': poiType,
        'poiId': poiId,
        'poiName': poiName,
        'districtId': districtId,
        'districtName': districtName,
        'poiExt': poiExt,
        'source': source,
        'isMain': isMain,
        'isInChina': isInChina,
      };

  Pois clone() =>
      Pois.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class PoiExt {
  String h5Url;
  String appUrl;

  PoiExt({
    required this.h5Url,
    required this.appUrl,
  });

  factory PoiExt.fromJson(Map<String, dynamic> jsonRes) {
    return PoiExt(
      h5Url: asT<String>(jsonRes['h5Url'])!,
      appUrl: asT<String>(jsonRes['appUrl'])!,
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'h5Url': h5Url,
        'appUrl': appUrl,
      };

  PoiExt clone() =>
      PoiExt.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
