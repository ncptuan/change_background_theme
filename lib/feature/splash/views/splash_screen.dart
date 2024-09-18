import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../config/theme/theme_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            Text(
              "Splash Screen",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Toogle theme: ",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Switch.adaptive(
                    value: ThemeManage.isDarkModeActive(),
                    onChanged: (val) {
                      ThemeManage.changeThemeMode();
                    }),
              ],
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
