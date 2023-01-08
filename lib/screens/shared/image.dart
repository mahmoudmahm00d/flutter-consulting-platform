import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final String? assetImage;
  const CustomCachedNetworkImage(
      {super.key,
      this.imageUrl,
      this.assetImage = 'asset/images/svgs/images.svg'});

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return CachedNetworkImage(
        imageUrl: ApiEndPoints.storage + imageUrl!,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) {
          return Container(
            color: Colors.white,
            child: SvgPicture.asset(assetImage!),
          );
        },
      );
    }

    return Container(
      color: Colors.white,
      child: SvgPicture.asset(assetImage!),
    );
  }
}
