/// 旅拍页模型
class TravelModel {
  late final int totalCount;
  late final List<TravelItem> resultList;

  TravelModel({
    required this.totalCount,
    required this.resultList,
  });

  TravelModel.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['resultList'] != null) {
      List<TravelItem> resultList = [];
      json['resultList'].forEach((v) {
        resultList.add(new TravelItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    data['resultList'] = this.resultList.map((v) => v.toJson()).toList();
    return data;
  }
}

class TravelItem {
  late final int type;
  late final Article article;

  TravelItem({
    required this.type,
    required this.article,
  });

  TravelItem.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    article = new Article.fromJson(json['article']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['article'] = this.article.toJson();
    return data;
  }
}

class Article {
  late final int articleId;
  late final String articleType;
  late final int productType;
  late final int sourceType;
  late final String articleTitle;
  late final Author author;
  late final List<Images> images;
  late final bool hasVideo;
  late final int readCount;
  late final int likeCount;
  late final int commentCount;
  late final List<Urls> urls;
  late final List<Null> tags;
  late final List<Topics> topics;
  late final List<Pois> pois;
  late final String publishTime;
  late final String publishTimeDisplay;
  late final String shootTime;
  late final String shootTimeDisplay;
  late final int level;
  late final String distanceText;
  late final bool isLike;
  late final int imageCounts;
  late final bool isCollected;
  late final int collectCount;
  late final int articleStatus;
  late final String poiName;

  Article({
    required this.articleId,
    required this.articleType,
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

  Article.fromJson(Map<String, dynamic> json) {
    articleId = json['articleId'];
    articleType = json['articleType'];
    productType = json['productType'];
    sourceType = json['sourceType'];
    articleTitle = json['articleTitle'];
    author = new Author.fromJson(json['author']);
    if (json['images'] != null) {
      List<Images> images = [];
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    commentCount = json['commentCount'];
    if (json['urls'] != null) {
      List<Urls> urls = [];
      json['urls'].forEach((v) {
        urls.add(new Urls.fromJson(v));
      });
    }

    if (json['topics'] != null) {
      List<Topics> topics = [];
      json['topics'].forEach((v) {
        topics.add(new Topics.fromJson(v));
      });
    }
    if (json['pois'] != null) {
      List<Pois> pois = [];
      json['pois'].forEach((v) {
        pois.add(new Pois.fromJson(v));
      });
    }
    publishTime = json['publishTime'];
    publishTimeDisplay = json['publishTimeDisplay'];
    shootTime = json['shootTime'];
    shootTimeDisplay = json['shootTimeDisplay'];
    level = json['level'];
    distanceText = json['distanceText'];
    isLike = json['isLike'];
    imageCounts = json['imageCounts'];
    isCollected = json['isCollected'];
    collectCount = json['collectCount'];
    articleStatus = json['articleStatus'];
    poiName = json['poiName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['articleId'] = this.articleId;
    data['articleType'] = this.articleType;
    data['productType'] = this.productType;
    data['sourceType'] = this.sourceType;
    data['articleTitle'] = this.articleTitle;
    data['author'] = this.author.toJson();
    data['images'] = this.images.map((v) => v.toJson()).toList();
    data['hasVideo'] = this.hasVideo;
    data['readCount'] = this.readCount;
    data['likeCount'] = this.likeCount;
    data['commentCount'] = this.commentCount;
    data['urls'] = this.urls.map((v) => v.toJson()).toList();
    data['topics'] = this.topics.map((v) => v.toJson()).toList();
    data['pois'] = this.pois.map((v) => v.toJson()).toList();
    data['publishTime'] = this.publishTime;
    data['publishTimeDisplay'] = this.publishTimeDisplay;
    data['shootTime'] = this.shootTime;
    data['shootTimeDisplay'] = this.shootTimeDisplay;
    data['level'] = this.level;
    data['distanceText'] = this.distanceText;
    data['isLike'] = this.isLike;
    data['imageCounts'] = this.imageCounts;
    data['isCollected'] = this.isCollected;
    data['collectCount'] = this.collectCount;
    data['articleStatus'] = this.articleStatus;
    data['poiName'] = this.poiName;
    return data;
  }
}

class Author {
  late final int authorId;
  late final String nickName;
  late final String clientAuth;
  late final String jumpUrl;
  late final CoverImage coverImage;
  late final int identityType;
  late final String tag;

  Author({
    required this.authorId,
    required this.nickName,
    required this.clientAuth,
    required this.jumpUrl,
    required this.coverImage,
    required this.identityType,
    required this.tag,
  });

  Author.fromJson(Map<String, dynamic> json) {
    authorId = json['authorId'];
    nickName = json['nickName'];
    clientAuth = json['clientAuth'];
    jumpUrl = json['jumpUrl'];
    coverImage = new CoverImage.fromJson(json['coverImage']);
    identityType = json['identityType'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['authorId'] = this.authorId;
    data['nickName'] = this.nickName;
    data['clientAuth'] = this.clientAuth;
    data['jumpUrl'] = this.jumpUrl;
    data['coverImage'] = this.coverImage.toJson();
    data['identityType'] = this.identityType;
    data['tag'] = this.tag;
    return data;
  }
}

class CoverImage {
  late final String dynamicUrl;
  late final String originalUrl;

  CoverImage({
    required this.dynamicUrl,
    required this.originalUrl,
  });

  CoverImage.fromJson(Map<String, dynamic> json) {
    dynamicUrl = json['dynamicUrl'];
    originalUrl = json['originalUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dynamicUrl'] = this.dynamicUrl;
    data['originalUrl'] = this.originalUrl;
    return data;
  }
}

class Images {
  late final int imageId;
  late final String dynamicUrl;
  late final String originalUrl;
  late final double width;
  late final double height;
  late final int mediaType;
  late final bool isWaterMarked;

  Images({
    required this.imageId,
    required this.dynamicUrl,
    required this.originalUrl,
    required this.width,
    required this.height,
    required this.mediaType,
    required this.isWaterMarked,
  });

  Images.fromJson(Map<String, dynamic> json) {
    imageId = json['imageId'];
    dynamicUrl = json['dynamicUrl'];
    originalUrl = json['originalUrl'];
    width = json['width'];
    height = json['height'];
    mediaType = json['mediaType'];
    isWaterMarked = json['isWaterMarked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageId'] = this.imageId;
    data['dynamicUrl'] = this.dynamicUrl;
    data['originalUrl'] = this.originalUrl;
    data['width'] = this.width;
    data['height'] = this.height;
    data['mediaType'] = this.mediaType;
    data['isWaterMarked'] = this.isWaterMarked;
    return data;
  }
}

class Urls {
  late final String version;
  late final String appUrl;
  late final String h5Url;
  late final String wxUrl;

  Urls({
    required this.version,
    required this.appUrl,
    required this.h5Url,
    required this.wxUrl,
  });

  Urls.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    appUrl = json['appUrl'];
    h5Url = json['h5Url'];
    wxUrl = json['wxUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['appUrl'] = this.appUrl;
    data['h5Url'] = this.h5Url;
    data['wxUrl'] = this.wxUrl;
    return data;
  }
}

class Topics {
  late final int topicId;
  late final String topicName;
  late final int level;

  Topics({
    required this.topicId,
    required this.topicName,
    required this.level,
  });

  Topics.fromJson(Map<String, dynamic> json) {
    topicId = json['topicId'];
    topicName = json['topicName'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['topicId'] = this.topicId;
    data['topicName'] = this.topicName;
    data['level'] = this.level;
    return data;
  }
}

class Pois {
  late final int poiType;
  late final int poiId;
  late final String poiName;
  late final int businessId;
  late final int districtId;
  late final PoiExt poiExt;
  late final int source;
  late final int isMain;
  late final bool isInChina;
  late final String countryName;

  Pois({
    required this.poiType,
    required this.poiId,
    required this.poiName,
    required this.businessId,
    required this.districtId,
    required this.poiExt,
    required this.source,
    required this.isMain,
    required this.isInChina,
    required this.countryName,
  });

  Pois.fromJson(Map<String, dynamic> json) {
    poiType = json['poiType'];
    poiId = json['poiId'];
    poiName = json['poiName'];
    businessId = json['businessId'];
    districtId = json['districtId'];
    poiExt = new PoiExt.fromJson(json['poiExt']);
    source = json['source'];
    isMain = json['isMain'];
    isInChina = json['isInChina'];
    countryName = json['countryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poiType'] = this.poiType;
    data['poiId'] = this.poiId;
    data['poiName'] = this.poiName;
    data['businessId'] = this.businessId;
    data['districtId'] = this.districtId;
    data['poiExt'] = this.poiExt.toJson();
    data['source'] = this.source;
    data['isMain'] = this.isMain;
    data['isInChina'] = this.isInChina;
    data['countryName'] = this.countryName;
    return data;
  }
}

class PoiExt {
  late final String h5Url;
  late final String appUrl;

  PoiExt({required this.h5Url, required this.appUrl});

  PoiExt.fromJson(Map<String, dynamic> json) {
    h5Url = json['h5Url'];
    appUrl = json['appUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['h5Url'] = this.h5Url;
    data['appUrl'] = this.appUrl;
    return data;
  }
}
