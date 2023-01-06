import 'package:flutter/material.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilebody;
  final Widget desktopbody;

  const ResponsiveLayout({required this.mobilebody, required this.desktopbody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobilewidth) {
        return mobilebody;
      } else {
        return desktopbody;
      }
    });
  }
}
