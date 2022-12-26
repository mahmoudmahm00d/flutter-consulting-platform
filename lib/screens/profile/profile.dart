import 'package:flutter/material.dart';
import '/core/colors.dart';
import '/screens/shared/shared_scaffold.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 0.3,
              color: ApplicationColors.secondaryBackground,
            )
          ],
        ),
      ),
    );
  }
}
