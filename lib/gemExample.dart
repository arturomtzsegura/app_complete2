import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class gemExample extends StatefulWidget {
  const gemExample({super.key});

  @override
  State<gemExample> createState() => _gemExampleState();
}

class _gemExampleState extends State<gemExample> {
  late AnimationController localAnimationController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orangeAccent),
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TapBounceContainer(
                    onTap: () {
                      showTopSnackBar(
                        Overlay.of(context),

                        const CustomSnackBar.info(
                          message: 'Desplazame hacia la izquierda',
                        ),
                        dismissType: DismissType.onSwipe,
                        dismissDirection: [DismissDirection.endToStart],
                      );
                    },
                    child: buildButton(
                      context,
                      'Mostrar snackbar desplazable',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container buildButton(BuildContext context, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 6,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}