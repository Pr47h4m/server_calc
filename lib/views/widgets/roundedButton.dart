import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onTap;
  final Color color;
  final double elevation;
  final double size;
  final String label;
  final Color labelColor;

  const RoundedButton({
    Key key,
    this.onTap,
    this.color,
    this.elevation,
    this.size,
    this.label,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size),
        ),
        color: color,
        elevation: elevation,
        child: CircleAvatar(
          child: FittedBox(
            child: Text(
              label,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: labelColor,
                  ),
            ),
          ),
          backgroundColor: color,
          radius: size,
        ),
      ),
    );
  }
}
