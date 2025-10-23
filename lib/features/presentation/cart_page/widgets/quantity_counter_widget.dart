import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/extension/extension.dart';

class QuantityCounterWidget extends StatefulWidget {
  const QuantityCounterWidget({super.key, required this.onValueChanged});

  final Function(int value) onValueChanged;

  @override
  State<QuantityCounterWidget> createState() => _QuantityCounterWidgetState();
}

class _QuantityCounterWidgetState extends State<QuantityCounterWidget> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (_counter > 1) {
              setState(() {
                _counter--;
                widget.onValueChanged.call(_counter);
              });
            }
          },
          child: SvgPicture.asset('assets/svg/Icon_Minus.svg'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
          child: Text(
            '$_counter',
            style: context.kTextTheme.titleMedium!
                .copyWith(fontWeight: FontWeight.w600, color: theme.hintColor),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (_counter < 50) {
              setState(() {
                _counter++;
                widget.onValueChanged.call(_counter);
              });
            }
          },
          child: SvgPicture.asset('assets/svg/Icon_Plus.svg'),
        ),
      ],
    );
  }
}
