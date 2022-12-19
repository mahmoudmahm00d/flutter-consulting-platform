import 'package:flutter/material.dart';
import 'package:flutter_consulting_platform/core/colors.dart';

import '../shared/shared_scaffold.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SharedScaffold(
        title: "Categories",
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: GridView.count(
            childAspectRatio: 2 / 2.5,
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              for (int i = 0; i < 10; i++)
                Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: ApplicationColors.secondaryBackground.withAlpha(55),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: const [
                      Image(image: AssetImage('asset/images/pngs/welcome.png')),
                      Text('welcome'),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

