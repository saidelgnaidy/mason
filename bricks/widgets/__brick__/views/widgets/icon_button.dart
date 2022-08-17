import 'package:flutter/material.dart';

class KIconButton extends StatelessWidget {
  const KIconButton({Key? key, this.onPressed, required this.child, this.radius}) : super(key: key);
  final void Function()? onPressed;
  final Widget child;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius ?? 30,
      height: radius ?? 30,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: const StadiumBorder(),
        child: child,
      ),
    );
  }
}
