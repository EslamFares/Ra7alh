import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> iosShowDialog(
    {required BuildContext context,
    required String title,
    required String subTitle,
    required Function onConfirm,
    Function? onRefuseMoreFunction,
    bool? showCancelBtn = true}) {
  return showDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(subTitle),
      actions: showCancelBtn != null && showCancelBtn == true
          ? [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    if (onRefuseMoreFunction != null) {
                      onRefuseMoreFunction();
                    }
                  },
                  child: const Text('cancel')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onConfirm();
                  },
                  child: const Text('ok'))
            ]
          : [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onConfirm();
                  },
                  child: const Text('ok'))
            ],
    ),
  );
}
