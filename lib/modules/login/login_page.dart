import 'package:flutter/material.dart';

import '../../shared/widgets/social_login/social_login_button.dart';
import '../../shared/themes/app_colors.dart';
import '../../shared/themes/app_images.dart';
import '../../shared/themes/app_text_style.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.40,
              color: AppColors.primary,
            ),
            Positioned(
              top: 70,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                height: size.height * 0.45,
              ),
            ),
            Positioned(
              top: 70 + size.height * 0.45 + 25,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(
                    AppImages.logoMini,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 70,
                      left: 70,
                      top: 25,
                      bottom: 40,
                    ),
                    child: Text(
                      'Organize seus boletos em um só lugar',
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SocialLoginButton(
                      onTap: () => controller.googleSignIn(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
