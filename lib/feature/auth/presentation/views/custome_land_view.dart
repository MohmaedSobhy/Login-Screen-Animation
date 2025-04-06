import 'package:flutter/cupertino.dart';
import 'package:login_app/core/utils/app_images_assets.dart';

class CustomeLandView extends StatelessWidget {
  const CustomeLandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -1 * MediaQuery.sizeOf(context).height * 0.10,
      left: 0,
      right: 0,
      child: Image.asset(
        AppImagesAssets.landTreeLight,
        height: MediaQuery.sizeOf(context).height * 0.5,
        width: double.infinity,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
