import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/core/style/app_color.dart';
import 'package:login_app/core/utils/app_string.dart';
import 'package:login_app/core/widgets/animated_button_widget.dart';
import 'package:login_app/feature/auth/presentation/views/custome_land_view.dart';
import 'package:login_app/feature/auth/presentation/views/custome_sun_widget.dart';
import 'package:login_app/feature/auth/presentation/views/text_field_user_info_view.dart';
import 'package:login_app/feature/auth/presentation/views/welcome_message_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:
                  (currentTab == 0)
                      ? AppColor.lightBgColors
                      : AppColor.darkBgColors,
            ),
          ),
          child: Stack(
            children: [
              CustomeSunView(isFull: (currentTab == 0)),
              CustomeLandView(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(child: SizedBox(height: 25)),
                    SliverToBoxAdapter(
                      child: AnimatedButttonSelection(
                        currentTab: currentTab,
                        paddingWidth: 20,
                        firstTab: () {
                          setState(() {
                            currentTab = 0;
                          });
                        },
                        secondTab: () {
                          currentTab = 1;
                          setState(() {});
                        },
                        firstTabTitle: AppString.morningLogin,
                        secondTabTitle: AppString.nightLogin,
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 50)),
                    SliverToBoxAdapter(
                      child: WelcomeMessageView(
                        message:
                            (currentTab == 0)
                                ? AppString.goodMorning
                                : AppString.goodNight,
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 25)),
                    const SliverToBoxAdapter(child: TextFieldUserInfoView()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
