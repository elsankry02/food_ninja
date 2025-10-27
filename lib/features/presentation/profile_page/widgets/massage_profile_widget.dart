import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';

class MassageProfileWidget extends StatefulWidget {
  final String image;
  final String title;

  const MassageProfileWidget({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  State<MassageProfileWidget> createState() => _MassageProfileWidgetState();
}

class _MassageProfileWidgetState extends State<MassageProfileWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.asset(widget.image),
      title: Row(
        children: [
          Expanded(
            child: Text(
              widget.title,
              style: context.kTextTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.hintColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.5),
              ),
              child: Center(
                child: Icon(
                  Icons.favorite,
                  color: isSelected
                      ? const Color.fromARGB(255, 204, 202, 202)
                      : Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
      subtitle: const Text(
        'Display Now !',
        // style: AppText.textstyle14Regular,
      ),
    );
  }
}
