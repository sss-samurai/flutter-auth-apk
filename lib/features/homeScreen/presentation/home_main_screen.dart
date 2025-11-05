import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/app/app_env.dart';
import 'package:token_manage_apk/features/homeScreen/home_screen_provider.dart';
import 'package:token_manage_apk/features/homeScreen/presentation/widget/home_carousel.dart';
import 'package:token_manage_apk/features/homeScreen/presentation/widget/search_filter_row.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/data/dummy_data.dart';
import '../../../core/utils/responsive/responsive_utils.dart';
import '../../../shared/ui/header/profile_header.dart';
import '../../../shared/ui/icon/app_icon.dart';
import '../../../shared/widgets/product/product_list.dart';

class HomeMainScreen extends ConsumerWidget {
  final Environment? environment;

  const HomeMainScreen({super.key, this.environment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.read(homeScreenDataProvider.notifier);

    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: ResponsiveUtils.screenPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                imageUrl: carouselImageUrls[0],
                name: 'John Doe',
                endIcon: IconHolder(
                  icon: AppIcons.notification,
                  notificationCount: 5,
                ),
              ),
              const SizedBox(height: 16),

              SearchFilterRow(
                searchController: homeController.searchValue,
                onSearchPressed: () {
                  print(
                    'Search icon pressed: ${homeController.searchValue.text}',
                  );
                },
                onFilterPressed: () {
                  print('Filter icon pressed');
                },
              ),
              const SizedBox(height: 16),

              HomeCarousel(imageUrls: carouselImageUrls),
              const SizedBox(height: 16),

              const SizedBox(height: 16),
              ProductList(products: dummyProducts),
            ],
          ),
        ),
      ),
    );
  }
}
