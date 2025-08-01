import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType { asset, network, svg }

class CustomImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final ImageType type;
  final Color? color;
  final Widget? errorWidget;

  const CustomImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.type = ImageType.asset,
    this.color,
    this.errorWidget,
  });

  factory CustomImage.contain({
    Key? key,
    required String imagePath,
    double? width,
    double? height,
    Color? color,
    Widget? errorWidget,
    required ImageType type,
  }) {
    return CustomImage(
      key: key,
      imagePath: imagePath,
      width: width,
      height: height,
      fit: BoxFit.contain,
      type: type,
      color: color,
      errorWidget: errorWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    try {
      switch (type) {
        case ImageType.asset:
          return Image.asset(
            imagePath,
            width: width,
            height: height,
            fit: fit,
            color: color,
            errorBuilder:
                (context, error, stackTrace) =>
                    errorWidget ?? _buildErrorWidget(),
          );

        case ImageType.network:
          return Image.network(
            imagePath,
            width: width,
            height: height,
            fit: fit,
            color: color,
          );

        case ImageType.svg:
          return SvgPicture.asset(
            imagePath,
            width: width,
            height: height,
            fit: fit,
            colorFilter:
                color != null
                    ? ColorFilter.mode(color!, BlendMode.srcIn)
                    : null,
          );
      }
    } catch (e) {
      return errorWidget ?? _buildErrorWidget();
    }
  }

  Widget _buildErrorWidget() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey[300],
      child: const Icon(Icons.error_outline, color: Colors.grey),
    );
  }
}
