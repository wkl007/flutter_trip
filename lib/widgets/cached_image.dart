import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// 图片缓存组件
class CachedImage extends StatelessWidget {
  final String imageUrl;
  final Alignment alignment;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const CachedImage({
    Key? key,
    required this.imageUrl,
    this.alignment = Alignment.center,
    this.fit,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      alignment: alignment,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
