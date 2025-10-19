// lib/shared/ui/text/expandable_text.dart
import 'package:flutter/material.dart';
import 'app_text.dart';
import 'text_type.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ExpandableText({super.key, required this.text, this.trimLines = 2});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _readMore = true;

  @override
  Widget build(BuildContext context) {
    final span = TextSpan(text: widget.text);
    final tp = TextPainter(
      maxLines: widget.trimLines,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
      text: span,
    );
    tp.layout(maxWidth: MediaQuery.of(context).size.width);

    final isOverflow = tp.didExceedMaxLines;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: widget.text,
          type: TextType.bodyText,
          maxLines: _readMore ? widget.trimLines : null,
          overflow: _readMore ? TextOverflow.ellipsis : TextOverflow.visible,
        ),
        if (isOverflow)
          InkWell(
            onTap: () => setState(() => _readMore = !_readMore),
            child: AppText(
              text: _readMore ? 'Read more' : 'Read less',
              type: TextType.bodyText,
              color: Colors.blue,
            ),
          ),
      ],
    );
  }
}
