import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/core/constants.dart';
import '/core/colors.dart';
import '/screens/shared/image.dart';
import '../../shared/text.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final void Function()? onTap;
  const CategoryCard(
      {super.key, required this.name, this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 250,
        width: 200,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: CustomCachedNetworkImage(
                imageUrl: imageUrl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ApplicationText(
                text: name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
