import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/fonts.dart';
import 'package:flutter_consulting_platform/models/user.dart';
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

class UserProfileScreen extends StatelessWidget {
  final User? user;

  const UserProfileScreen({
    super.key,
    this.user,
  });

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
                          imageUrl: user?.profileImage ?? '',
                          assetImage: 'asset/images/svgs/avatar.svg',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: ApplicationText(
                text: user?.name ?? 'name',
                size: 20,
                weight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: ApplicationText(
                text: user?.email ?? 'email',
                size: 16,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: ApplicationText(
                text: user?.phoneNumber ?? 'phone',
                size: 16,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ReadMoreText(
                user?.about ?? 'About',
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
              height: 24,
            ),
            // Center(
            //   child: ApplicationPrimaryButton(
            //     text: 'Book an appointment'.tr,
            //     onPressed: () {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
