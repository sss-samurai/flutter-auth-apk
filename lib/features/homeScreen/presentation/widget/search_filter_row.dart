import 'package:flutter/material.dart';

import '../../../../core/constants/app_icons.dart';
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
            onSuffixTap: onSearchPressed,
          ),
        ),
        const SizedBox(width: 12),

        IconHolder(icon: AppIcons.filter, onTap: onFilterPressed),
      ],
    );
  }
}
