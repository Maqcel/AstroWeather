import 'package:flutter/material.dart';

class Fragment extends StatelessWidget {
  final Widget child;
  const Fragment({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: child,
    );
  }
}
