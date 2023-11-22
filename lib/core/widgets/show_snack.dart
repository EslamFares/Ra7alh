import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

showSnack(context,
    {String? title,
    String? message,
    int? timeSec,
    required ContentType? contentType}) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: timeSec ?? 4),
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title ?? titleSnack(contentType),
      message: message ?? titleSnack(contentType),
      contentType: contentType ?? ContentType.success,
    ),
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

String titleSnack(ContentType? type) {
  if (type == ContentType.failure) {
    return 'Oh Hey!!';
  } else if (type == ContentType.help) {
    return 'Hi There!';
  } else if (type == ContentType.warning) {
    return 'Warning!';
  } else {
    return 'Congratulations!';
  }
}
