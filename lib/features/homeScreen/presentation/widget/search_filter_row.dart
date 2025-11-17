import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../shared/ui/icon/app_icon.dart';
import '../../../../shared/ui/textField/search_app_text_field.dart';

class SearchFilterRow extends StatelessWidget {
  final TextEditingController searchController;
  final VoidCallback? onFilterPressed;
  final VoidCallback? onSearchPressed;

  const SearchFilterRow({
    super.key,
    required this.searchController,
    required this.onFilterPressed,
    this.onSearchPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchAppTextField(
            label: AppLocalizations.of(context)!.searchLabel,
            controller: searchController,
            suffixIcon: IconHolder(icon: AppIcons.search),
            onSuffixTap: () => context.pushNamed(AppRoutes.searchAndFilter),
            onTap: () => context.pushNamed(AppRoutes.searchAndFilter),
          ),
        ),
        const SizedBox(width: 12),
        IconHolder(
          icon: AppIcons.filter,
          onTap: () => context.pushNamed(AppRoutes.searchAndFilter),
        ),
      ],
    );
  }
}
