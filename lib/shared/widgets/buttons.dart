import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/dynamic_theme/app_color.dart';
class DefaultButton extends StatelessWidget {
 
  const DefaultButton(
      {Key? key,
      this.backgroundColor,
      this.height,
      this.shape,
      required this.text,
      this.onTap,
      this.style,
      this.padding,
      this.icon , 
      this.iconSize , 
      this.width
      })
      : super(key: key);
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final OutlinedBorder? shape;
  final String text;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final TextStyle? style;
  final IconData? icon;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height ?? 50,
      width: width ?? 100 ,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(shape ??
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              padding: MaterialStateProperty.all<EdgeInsets>(padding ??
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10)),
              backgroundColor: MaterialStateProperty.all(backgroundColor)),
          onPressed: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  color: Colors.white,
                  size: iconSize ??18,
                ),
                 if (icon != null)
              const SizedBox(
                width: 5,
              ),
              Flexible(
                child: Text(
                  text,
                  style: style,
                
                ),
              ),
            ],
          )),
    );
  }
}

class DefaultButtonOutLined extends StatelessWidget {
  const DefaultButtonOutLined(
      {Key? key,
      this.color,
      this.shape,
      required this.text,
      this.onTap,
      this.style,
      this.padding,
      this.icon,
      this.borderColor,
      this.isBorder = false})
      : super(key: key);
  final Color? color;
  final Color? borderColor;
  final bool isBorder;
  final OutlinedBorder? shape;
  final String text;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final TextStyle? style;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(
                color: isBorder
                    ? borderColor ?? AppColors.primary
                    : color ?? AppColors.primary,
                width: 2)),
            shape: MaterialStateProperty.all(shape ??
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
            padding: MaterialStateProperty.all<EdgeInsets>(padding ??
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
            backgroundColor: MaterialStateProperty.all(color)),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: isBorder ? borderColor : color,
                size: 30,
              ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: style,
            
            ),
          ],
        ));
  }
}

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    this.color,
    this.iconColor,
    this.tooltip,
    this.onTap,
    required this.icon,
  }) : super(key: key);
  final Color? color;
  final Color? iconColor;
  final VoidCallback? onTap;
  final IconData icon;
  final String? tooltip;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? "",
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: color ?? AppColors.primary,
        child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                icon,
                size: 15,
                color: iconColor ?? AppColors.onPrimary,
              ),
            )),
      ),
    );
  }
}
