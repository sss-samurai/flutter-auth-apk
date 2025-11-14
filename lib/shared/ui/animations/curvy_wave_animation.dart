import 'package:flutter/material.dart';

/// A smooth rising wave animation that starts from the bottom
/// and stops slightly below the center of the screen.
class CurvyWaveAnimation extends StatefulWidget {
  const CurvyWaveAnimation({super.key});

  @override
  State<CurvyWaveAnimation> createState() => _CurvyWaveAnimationState();
}

class _CurvyWaveAnimationState extends State<CurvyWaveAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Animate from bottom (1.0 = bottom) to slightly below center (0.5)
    _animation = Tween<double>(
      begin: 1.0,
      end: 0.5,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: _WaveClipper(_animation.value),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: colorScheme.primary.withOpacity(0.3),
            ),
          ),
        );
      },
    );
  }
}

class _WaveClipper extends CustomClipper<Path> {
  final double waveHeightFactor;
  const _WaveClipper(this.waveHeightFactor);

  @override
  Path getClip(Size size) {
    final path = Path();
    final height = size.height * waveHeightFactor;

    // Start bottom left
    path.moveTo(0, size.height);
    // Draw up left side
    path.lineTo(0, height);

    // Create smooth wavy top edge
    path.quadraticBezierTo(
      size.width * 0.25,
      height - 40,
      size.width * 0.5,
      height,
    );
    path.quadraticBezierTo(size.width * 0.75, height + 40, size.width, height);

    // Close bottom
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_WaveClipper oldClipper) =>
      oldClipper.waveHeightFactor != waveHeightFactor;
}
