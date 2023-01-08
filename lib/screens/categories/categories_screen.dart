import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/screens/categories/categories_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '/core/colors.dart';
import '/screens/shared/shared_scaffold.dart';
import 'components/category_card.dart';

class CategoriesScreen extends GetView<CategoriesController> {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SharedScaffold(
        title: "Categories",
        body: Obx(
          () {
            if (controller.loading.isTrue) {
              return GridView.count(
                childAspectRatio: 2 / 2.5,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: List.generate(
                  8,
                  (index) => Shimmer.fromColors(
                    baseColor: Colors.black26,
                    highlightColor: Colors.black12,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              );
            }
            return GridView.count(
              childAspectRatio: 2 / 2.5,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: controller.categories.map((element) {
                return CategoryCard(
                  name: element.name,
                  imageUrl: element.image,
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
