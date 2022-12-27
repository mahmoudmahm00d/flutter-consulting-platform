import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/shared/application_buttons.dart';
import 'package:flutter_consulting_platform/screens/shared/custom.dart';
import 'package:flutter_consulting_platform/screens/shared/text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:readmore/readmore.dart';
import '/core/colors.dart';
import '/screens/shared/shared_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  left: MediaQuery.of(context).size.width * 0.3,
                  right: MediaQuery.of(context).size.width * 0.3,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: const Image(
                      width: 150,
                      height: 150,
                      image: AssetImage('asset/images/pngs/1.png'),
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
                text: 'tassnem shalabe'.tr,
                size: 20,
                weight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RatingBar(
              initialRating: 3.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 26,
              ignoreGestures: true,
              glow: false,
              ratingWidget: RatingWidget(
                full: const Icon(
                  PhosphorIcons.starFill,
                  color: Colors.yellow,
                ),
                half: const Icon(
                  PhosphorIcons.starHalfFill,
                  color: Colors.yellow,
                ),
                empty: const Icon(
                  PhosphorIcons.star,
                  color: Colors.yellow,
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
            const Center(
              child: ApplicationText(
                text: "medical, consolting",
                color: ApplicationColors.primaryFont,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ReadMoreText(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                trimLines: 3,
                textAlign: TextAlign.justify,
                colorClickableText: ApplicationColors.primaryFont,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: ApplicationPrimaryButton(
                text: 'Book an appointment'.tr,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RecipeItemMallika1(title: 'medical', subtitle: '5'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RecipeItemMallika1(title: 'medical', subtitle: '5'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RecipeItemMallika1(title: 'medical', subtitle: '5'),
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
