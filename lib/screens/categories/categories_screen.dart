import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/core/colors.dart';
import '/screens/shared/shared_scaffold.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SharedScaffold(
        title: "Categories",
        body: GridView.count(
          childAspectRatio: 2 / 2.5,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            for (int i = 1; i <= 10; i++)
              Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  color: ApplicationColors.secondaryBackground.withAlpha(55),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset('asset/images/svgs/images.svg'),
                    ),
                    Text('Category $i name'),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
