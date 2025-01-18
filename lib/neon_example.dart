import 'package:efecto_neon/neon_effect.dart';
import 'package:flutter/material.dart';

class NeonExample extends StatelessWidget {
  const NeonExample({super.key});

  @override
  Widget build(BuildContext context) {
    final amarillo = Colors.yellow;
    final azul = Colors.blue;
    final rojo = Colors.red;
    final backgroundColor = Colors.black;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeonEffect(
              neonColor: amarillo,
              child: _CustomWidget(
                color: amarillo,
                title: "AMARILLO",
                backgroundColor: backgroundColor,
              ),
            ),
            const SizedBox(height: 30),
            NeonEffect(
              neonColor: azul,
              child: _CustomWidget(
                color: azul,
                title: "AZUL",
                backgroundColor: backgroundColor,
              ),
            ),
            const SizedBox(height: 30),
            NeonEffect(
              neonColor: rojo,
              child: _CustomWidget(
                color: rojo,
                title: "ROJO",
                backgroundColor: backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomWidget extends StatelessWidget {
  const _CustomWidget({
    required this.color,
    required this.title,
    this.backgroundColor = Colors.black,
  });

  final Color color;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
