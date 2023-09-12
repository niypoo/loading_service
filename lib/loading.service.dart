import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoadingService extends GetxService {
  // define
  static LoadingService get to => Get.find();

  // properties
  final Widget? spinner;
  final EasyLoadingMaskType maskType;
  final Color? maskColor;
  final Color? backgroundColor;
  final Widget? indicator;
  final bool? dismissOnTap;

  LoadingService({
    required this.spinner,
    this.maskType = EasyLoadingMaskType.black,
    this.indicator,
    this.dismissOnTap = false,
    this.maskColor = Colors.black12,
    this.backgroundColor = Colors.black12,
  });

  Future<LoadingService> init() async {
    EasyLoading().maskColor =
        maskColor ?? Get.theme.iconTheme.color!.withOpacity(0.4);
    EasyLoading().backgroundColor = backgroundColor ?? Get.theme.cardColor;
    EasyLoading().indicatorWidget = indicator;
    EasyLoading().maskType = maskType;
    EasyLoading().dismissOnTap = dismissOnTap;
    EasyLoading().dismissOnTap = dismissOnTap;
    EasyLoading().indicatorWidget = spinner;

    // return
    return this;
  }

  // Show loading
  on() async => await EasyLoading.show(status: 'Loading...'.tr);

  // dismiss loading
  Future<void> off() async => await EasyLoading.dismiss();
}
