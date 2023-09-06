import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/categories/specialists_controller.dart';
import 'package:flutter_consulting_platform/screens/specialists/components/specialist_card.dart';
import 'package:shimmer/shimmer.dart';
import '../specialists/specialist_profile_screen.dart';
import '/screens/shared/shared_scaffold.dart';
import '/screens/specialists/specialists_controller.dart';
import 'package:get/get.dart';

class SpecialistByCategory extends GetView<SpecialistsByCategoryController> {
  const SpecialistByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<SpecialistsByCategoryController>(SpecialistsByCategoryController());

    return SharedScaffold(
      title: controller.title,
      body: Center(
        child: Obx(
          () {
            if (controller.loading.isTrue) {
              return GridView.count(
                childAspectRatio: 3 / 1,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(
                  8,
                  (index) => Shimmer.fromColors(
                    baseColor: Colors.black26,
                    highlightColor: Colors.black12,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }

            return GridView.count(
              childAspectRatio: 3 / 1,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              crossAxisCount: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: controller.specialists.map(
                (element) {
                  return SpecialistCard(
                    name: element!.name.toString(),
                    imageUrl: element.profileImage,
                    categories:
                        element.categories!.map((e) => e!.name).join(', '),
                    rating: element.ratings!.isEmpty
                        ? 0
                        : double.parse(
                            element.ratings![0]!.averageRating.toString()),
                    onTap: () => Get.to(
                      const SpecialistProfileScreen(),
                      arguments: element.id,
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ),
    );
  }
}
