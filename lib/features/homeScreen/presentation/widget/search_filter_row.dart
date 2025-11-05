import 'package:flutter/material.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../l10n/app_localizations.dart';
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
            suffixIcon: const Icon(AppIcons.search),
            onSuffixTap: onSearchPressed, // ✅ handle search tap
          ),
        ),
        const SizedBox(width: 12),
        IconButton(
          icon: const Icon(AppIcons.filter),
          onPressed: onFilterPressed,
        ),
      ],
    );
  }
}
