import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:task_manager_app/core/theme/dynamic_theme/app_color.dart';

class ShowSmartDialog {

  static bool shown = false;

  static show({bool fullScreen = false}) {
    if (shown == false) {
      print("diiiiiiiiiiiiiiiiiiiialog");
      // SmartDialog.showLoading(builder: (_) => loadingWidget());
      SmartDialog.show(
        
          clickMaskDismiss: false,
          animationType: SmartAnimationType.scale,
          animationTime: const Duration(milliseconds: 100),
          keepSingle: true,
          builder: (context) => fullScreen
              ? loadingWidget()
              : Dialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: SizedBox(height: 200, child: loadingWidget()),
                ));

             shown = true;
    }
  }

  static Center loadingWidget() =>  Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      );

  static dismis() {
    if (shown) {
      SmartDialog.dismiss();
      shown = false;
    } else {}
  }

}
