import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/fonts.dart';
import 'package:flutter_consulting_platform/models/specialists.dart';
import 'package:flutter_consulting_platform/screens/profile/profile_controller.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/custom.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:readmore/readmore.dart';
import '../../shared/image.dart';
import '/core/colors.dart';
import '/screens/shared/shared_scaffold.dart';

class SpecialistProfileScreen extends StatelessWidget {
  final Specialist? specialist;
  const SpecialistProfileScreen({
    super.key,
    required this.specialist,
  });

  @override
  Widget build(BuildContext context) {
    var categories = specialist!.categories!.map((e) => e!.name).join(', ');
    return Scaffold(
      backgroundColor: ApplicationColors.light,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      color: ApplicationColors.secondaryBackground,
                    ),
                    const SizedBox(
                      height: 68,
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width * 0.32,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      height: 160,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: CustomCachedNetworkImage(
                          imageUrl: specialist?.profileImage ?? '',
                          assetImage: 'asset/images/svgs/avatar.svg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: ApplicationText(
                text: specialist?.name ?? 'Name',
                size: 20,
                weight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RatingBar(
              initialRating: (specialist!.ratings!.isEmpty)
                  ? 0.0
                  : double.parse(specialist!.ratings![0]!.averageRating ?? '0'),
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 26,
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
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ApplicationText(
                text: categories.isNotEmpty
                    ? categories
                    : 'Please add specializes',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ReadMoreText(
                specialist?.about ?? "Please add about",
                trimLines: 3,
                textAlign: TextAlign.justify,
                colorClickableText: ApplicationColors.primaryFont,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: ApplicationColors.primary,
                  fontFamily: ApplicationFonts.defaultFamily,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const ApplicationText(
              text: 'Specializes',
              weight: FontWeight.bold,
              size: 18,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SpecializeCard(
                title: 'medical',
                description: '',
                price: "50",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SpecializeCard(
                title: 'medical',
                description: '5',
                price: "50",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SpecializeCard(
                title: 'medical',
                description: '5',
                price: "50",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ApplicationText(
              text: 'Contact infos',
              size: 20,
            ),
            SizedBox(
              height: 20,
            ),
            FacebookBtn1(onPressed: () {}),
            WhatsappButton(onPressed: (() {})),
          ],
        ),
      ),
    );
  }
}
