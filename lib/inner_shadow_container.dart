import 'package:flutter/material.dart';

/// A customizable container widget that applies inner shadow effect
/// from specified directions like top-left, top-right, etc.
///
/// Perfect for neumorphic and soft UI design patterns.
class InnerShadowContainer extends StatelessWidget {
  /// The height of the container.
  final double? height;

  /// The width of the container.
  final double? width;

  /// The border radius of the container.
  final double borderRadius;

  /// The background color of the container.
  final Color backgroundColor;

  /// Whether to apply inner shadow from the top-left direction.
  final bool isShadowTopLeft;

  /// Whether to apply inner shadow from the top-right direction.
  final bool isShadowTopRight;

  /// Whether to apply inner shadow from the bottom-right direction.
  final bool isShadowBottomRight;

  /// Whether to apply inner shadow from the bottom-left direction.
  final bool isShadowBottomLeft;

  /// The child widget to display inside the container.
  final Widget? child;

  /// Alignment of the child widget.
  final AlignmentGeometry alignment;

  /// Creates an [InnerShadowContainer].
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
    final hasShadow = isShadowTopLeft ||
        isShadowTopRight ||
        isShadowBottomRight ||
        isShadowBottomLeft;

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

/// A custom painter to draw the inner shadow effect.
class InnerShadowPainter extends CustomPainter {
  /// Color of the inner shadow.
  final Color shadowColor;

  /// Blur radius for the shadow.
  final double blur;

  /// Offset applied to the shadow.
  final Offset offset;

  /// Border radius of the shadow clipping.
  final double borderRadius;

  /// Whether to paint shadow on top-left.
  final bool isShadowTopLeft;

  /// Whether to paint shadow on top-right.
  final bool isShadowTopRight;

  /// Whether to paint shadow on bottom-right.
  final bool isShadowBottomRight;

  /// Whether to paint shadow on bottom-left.
  final bool isShadowBottomLeft;

  /// Creates an [InnerShadowPainter].
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
      ..addRect(Rect.fromLTRB(
          -size.width, -size.height, size.width * 2, size.height * 2));

    final inner = Path()
      ..addRRect(rrect)
      ..fillType = PathFillType.evenOdd;

    canvas.saveLayer(rect, Paint());

    void drawShadow(double dx, double dy) {
      canvas.save();
      canvas.translate(dx, dy);
      canvas.drawPath(
          Path.combine(PathOperation.difference, outer, inner), paint);
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
