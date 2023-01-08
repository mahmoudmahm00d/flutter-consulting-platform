import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../core/constants.dart';
import '../../shared/image.dart';

class SpecialistCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final double rating;
  final String categories;
  const SpecialistCard({
    super.key,
    required this.name,
    required this.categories,
    this.imageUrl = '',
    this.rating = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 100,
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            height: 80,
            child: AspectRatio(
              aspectRatio: 1,
              child: CustomCachedNetworkImage(
                imageUrl: imageUrl,
                assetImage: 'asset/images/svgs/avatar.svg',
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ApplicationText(
                text: name,
                weight: FontWeight.w600,
              ),
              ApplicationText(text: categories, size: 12),
              RatingBar(
                initialRating: rating,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 12,
                ignoreGestures: true,
                glow: false,
                ratingWidget: RatingWidget(
                  full: const Icon(
                    PhosphorIcons.starFill,
                    color: ApplicationColors.primary,
                  ),
                  half: const Icon(
                    PhosphorIcons.starHalfFill,
                    color: ApplicationColors.primary,
                  ),
                  empty: const Icon(
                    PhosphorIcons.star,
                    color: ApplicationColors.primary,
                  ),
                ),
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
