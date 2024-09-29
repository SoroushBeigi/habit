
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:habit/src/common/resources/value_manager.dart';


class SVGWidget extends StatelessWidget {
  final String svgPath;
  final Color? color;
  final double size;
  final BoxFit? boxFit;

  const SVGWidget({
    super.key,
    required this.svgPath,
    this.color,
    this.size = AppSize.s80,
    this.boxFit,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      colorFilter: (color != null) ? ColorFilter.mode(color ?? Theme.of(context).colorScheme.primary, BlendMode.srcIn) : null,
      width: size,
      height: size,
      fit: boxFit ?? BoxFit.contain,
    );
  }
}