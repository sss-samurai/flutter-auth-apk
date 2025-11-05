import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../core/utils/responsive/responsive_breakpoints.dart';
import '../../../../shared/ui/image/app_image.dart';
import '../../../../core/utils/responsive/responsive_utils.dart';

class HomeCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const HomeCarousel({super.key, required this.imageUrls});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (_pageController.hasClients) {
        _currentPage = (_currentPage + 1) % widget.imageUrls.length;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    final carouselHeight = ResponsiveUtils.getCarouselHeight(context);
    final maxWidth = ResponsiveUtils.getMaxWidth(screenType, screenWidth);

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
          maxHeight: carouselHeight,
        ),
        child: SizedBox(
          height: carouselHeight,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return AppImage(
                url: widget.imageUrls[index],
                fit: BoxFit.cover,
                onTap: () {
                  print("Image $index clicked!");
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
