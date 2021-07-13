import 'package:animated_card/animated_card.dart';
import "package:flutter/material.dart";
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final IconData icone;
  final String initialValue;
  final String Function(String) validator;
  final TextEditingController controller;
  final void Function(String value) onChanged;

  const InputTextWidget(
      {Key key,
      this.label,
      this.icone,
      this.initialValue,
      this.validator,
      this.controller,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.left,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              onChanged: onChanged,
              initialValue: initialValue,
              validator: validator,
              style: TextStyles.input,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                labelText: label,
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Icon(
                        icone,
                        color: AppColors.primary,
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 48,
                      color: AppColors.stroke,
                    )
                  ],
                ),
                border: InputBorder.none,
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: AppColors.stroke,
            ),
          ],
        ),
      ),
    );
  }
}
