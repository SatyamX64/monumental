import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/custom_ui/custom_ui.dart';
import 'package:monumental/presentation/screens/login/widgets/widgets.dart';
import 'package:monumental/utils/my_const/my_const.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: COLOR_CONST.CREAM1,
            child: Stack(
              children: [
                Positioned(
                  bottom: constraints.maxHeight * 0.25,
                  child: Assets.images.splashBg
                      .image(width: constraints.maxWidth, fit: BoxFit.cover),
                ),
                Container(
                  constraints: const BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.4],
                      colors: [
                        COLOR_CONST.CREAM1.withOpacity(0.05),
                        COLOR_CONST.CREAM1
                      ],
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: LayoutBuilder(
                    builder: (context, constraints) {
                      return ScrollConfiguration(
                        behavior: CustomScrollBehavior(),
                        child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          child: Container(
                            constraints: BoxConstraints(
                                minHeight: constraints.maxHeight),
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    'WELCOME TO MONUMENTAL HABITS',
                                    style: FONT_CONST.TITLE_REGULAR_32,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const GoogleLoginBtn(),
                                const SizedBox(
                                  height: 8,
                                ),
                                const FacebookLoginBtn(),
                                const SizedBox(
                                  height: 25,
                                ),
                                const LoginForm(),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
