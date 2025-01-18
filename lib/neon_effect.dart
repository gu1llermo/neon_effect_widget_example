import 'package:flutter/material.dart';

class NeonEffect extends StatelessWidget {
  final Widget child;
  final Color neonColor;
  final double spreadRadius;
  final double blurRadius;

  const NeonEffect({
    super.key,
    required this.child,
    required this.neonColor,
    this.spreadRadius = 2.0,
    this.blurRadius = 15.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // Capa exterior del efecto neón
          BoxShadow(
            color: neonColor.withAlpha(153),
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
          ),
          // Capa interior más intensa
          BoxShadow(
            color: neonColor.withAlpha(204),
            spreadRadius: spreadRadius / 2,
            blurRadius: blurRadius / 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
