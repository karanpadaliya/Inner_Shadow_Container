import 'dart:ui';
import 'package:flutter/material.dart';

/// A container widget that applies inner shadow effect from specified directions.
class InnerShadowContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double borderRadius;
  final Color backgroundColor;
  final bool isShadowTopLeft;
  final bool isShadowTopRight;
  final bool isShadowBottomRight;
  final bool isShadowBottomLeft;
  final Widget? child;
  final AlignmentGeometry alignment;

  const InnerShadowContainer({
    super.key,
    this.height,
    this.width,
    this.borderRadius = 12.0,
    this.backgroundColor = Colors.white,
    this.isShadowTopLeft = false,
    this.isShadowTopRight = false,
    this.isShadowBottomRight = false,
    this.isShadowBottomLeft = false,
    this.child,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final hasShadow = isShadowTopLeft || isShadowTopRight || isShadowBottomRight || isShadowBottomLeft;

    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          alignment: alignment,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: child,
        ),
        if (hasShadow)
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: CustomPaint(
                painter: InnerShadowPainter(
                  shadowColor: const Color(0x1A2FBBA4),
                  blur: 1.4,
                  offset: const Offset(0, 1),
                  borderRadius: borderRadius,
                  isShadowTopLeft: isShadowTopLeft,
                  isShadowTopRight: isShadowTopRight,
                  isShadowBottomRight: isShadowBottomRight,
                  isShadowBottomLeft: isShadowBottomLeft,
                ),
              ),
            ),
          ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: CustomPaint(
              painter: InnerShadowPainter(
                shadowColor: Colors.black26,
                blur: 4.0,
                offset: const Offset(4, -3),
                borderRadius: borderRadius,
                isShadowTopLeft: isShadowTopLeft,
                isShadowTopRight: isShadowTopRight,
                isShadowBottomRight: isShadowBottomRight,
                isShadowBottomLeft: isShadowBottomLeft,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// The painter responsible for rendering the inner shadow.
class InnerShadowPainter extends CustomPainter {
  final Color shadowColor;
  final double blur;
  final Offset offset;
  final double borderRadius;
  final bool isShadowTopLeft;
  final bool isShadowTopRight;
  final bool isShadowBottomRight;
  final bool isShadowBottomLeft;

  InnerShadowPainter({
    required this.shadowColor,
    required this.blur,
    required this.offset,
    required this.borderRadius,
    this.isShadowTopLeft = false,
    this.isShadowTopRight = false,
    this.isShadowBottomRight = false,
    this.isShadowBottomLeft = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = shadowColor
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blur);

    final rect = Offset.zero & size;
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    final outer = Path()
      ..addRect(Rect.fromLTRB(-size.width, -size.height, size.width * 2, size.height * 2));

    final inner = Path()
      ..addRRect(rrect)
      ..fillType = PathFillType.evenOdd;

    canvas.saveLayer(rect, Paint());

    void drawShadow(double dx, double dy) {
      canvas.save();
      canvas.translate(dx, dy);
      canvas.drawPath(Path.combine(PathOperation.difference, outer, inner), paint);
      canvas.restore();
    }

    if (isShadowBottomRight) drawShadow(-offset.dx.abs(), -offset.dy.abs());
    if (isShadowBottomLeft) drawShadow(offset.dx.abs(), -offset.dy.abs());
    if (isShadowTopLeft) drawShadow(offset.dx.abs(), offset.dy.abs());
    if (isShadowTopRight) drawShadow(-offset.dx.abs(), offset.dy.abs());

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
