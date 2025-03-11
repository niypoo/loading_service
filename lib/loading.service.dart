import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoadingService extends GetxService {
  // define
  static LoadingService get to => Get.find();

  // properties
  final EasyLoadingMaskType maskType;
  final Color? maskColor;
  final Color? backgroundColor;
  final Widget? indicator;
  final bool? dismissOnTap;

  LoadingService({
    this.maskType = EasyLoadingMaskType.black,
    this.indicator,
    this.dismissOnTap = false,
    this.maskColor ,
    this.backgroundColor ,
  });

  Future<LoadingService> init() async {
    EasyLoading().maskColor = maskColor ?? Get.theme.cardColor.withOpacity(0.5);
    EasyLoading().backgroundColor = backgroundColor ?? Get.theme.primaryColor;
    EasyLoading().indicatorWidget = indicator;
    EasyLoading().maskType = maskType;
    EasyLoading().dismissOnTap = dismissOnTap;
    EasyLoading().indicatorWidget = indicator;

    // return
    return this;
  }

  // Show loading
  on() async => await EasyLoading.show(status: 'Loading...'.tr);

  // dismiss loading
  Future<void> off() async => await EasyLoading.dismiss();
}
