import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> iosShowDialog({
  required BuildContext context,
  required String title,
  required String subTitle,
  required Function onConfirm,
  Function? onRefuse,
}) {
  return showDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(subTitle),
      actions: onRefuse != null
          ? [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    onRefuse();
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
