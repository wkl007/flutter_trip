import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final AlignmentGeometry alignment;
  final BoxFit fit;
  final String imageUrl;
  final double width;
  final double height;
  final bool inSizedBox;

  const CachedImage({
    Key key,
    @required this.imageUrl,
    this.alignment: Alignment.center,
    this.fit,
    this.width,
    this.height,
    this.inSizedBox = false,
  })  : assert(imageUrl != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return inSizedBox
        ? FractionallySizedBox(
            widthFactor: 1,
            child: CachedNetworkImage(
              alignment: alignment,
              fit: fit,
              imageUrl: imageUrl,
              width: width,
              height: height,
            ),
          )
        : CachedNetworkImage(
            alignment: alignment,
            fit: fit,
            imageUrl: imageUrl,
            width: width,
            height: height,
          );
  }
}
