import 'package:flutter/material.dart';
import 'package:nlw_together/shared/models/boleto_model.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';
import 'package:nlw_together/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_widget.dart';

class ExtractPage extends StatefulWidget {
  const ExtractPage({Key key}) : super(key: key);

  @override
  _ExtractPageState createState() => _ExtractPageState();
}

class _ExtractPageState extends State<ExtractPage> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24),
            child: Row(
              children: [
                Text("Meus Extratos",
                    style: TextStyles.titleBoldHeading),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          BoletoListWidget(controller: controller)
        ],
      ),
    );
  }
}
