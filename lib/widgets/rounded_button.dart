import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPress;
  final Color? color;
  final Color? overlaycolor;
  const RoundedButton({
    super.key,
    required this.label,
    this.onPress,
    this.color,
    this.overlaycolor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: OutlinedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(
            overlaycolor,
          ),
          backgroundColor: MaterialStateProperty.all(
            color,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
          ),
        ),
        onPressed: () {
          onPress?.call();
        },
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'Aaargh',
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
