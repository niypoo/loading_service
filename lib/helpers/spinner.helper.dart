import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_service/loading.service.dart';

class SpinnerHelper {
  static Widget basic({
    double size = 60,
  }) {
    return SizedBox(
      height: size,
      width: size,
      child: LoadingService.to.spinner,
    );
  }

  static Widget verticalTextSpinner({
    double size = 60,
    String? text,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Loading
        basic(size: size),

        const SizedBox(height: 15),

        Text(
          text ?? 'Loading...'.tr,
          style: Get.textTheme.bodySmall,
        ),
      ],
    );
  }

  static Widget horizontalTextSpinner({
    double size = 60,
    String? text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Loading
        basic(size: size),
        const SizedBox(width: 15),
        Text(
          text ?? 'Loading...'.tr,
          style: Get.textTheme.bodySmall,
        ),
      ],
    );
  }
}
