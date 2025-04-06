import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/core/utils/app_images_assets.dart';

class CustomeSunView extends StatelessWidget {
  final bool isFull;
  const CustomeSunView({super.key, required this.isFull});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 350),
      curve: Curves.easeInOut,
      left: 0,
      right: 0,
      bottom:
          (isFull)
              ? MediaQuery.sizeOf(context).height * 0.04
              : -1 * MediaQuery.sizeOf(context).height * 0.09,
      child: SvgPicture.asset(AppImagesAssets.sunIcon),
    );
  }
}
