import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:nlw_together/shared/models/boleto_model.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';
import 'package:nlw_together/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nlw_together/shared/widgets/boleto_list/boleto_list_widget.dart';

class MeusBoletosPage extends StatefulWidget {
  const MeusBoletosPage({Key key}) : super(key: key);

  @override
  _MeusBoletosPageState createState() => _MeusBoletosPageState();
}

class _MeusBoletosPageState extends State<MeusBoletosPage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 80,
            child: Stack(
              children: [
                Container(
                  color: AppColors.primary,
                  height: 40,
                ),
                ValueListenableBuilder<List<BoletoModel>>(
                    valueListenable: controller.boletosNotifier,
                    builder: (_, boletos, __) => AnimatedCard(
                      direction: AnimatedCardDirection.top,
                        child: BoletoInfoWidget(size: boletos.length)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24),
            child: Row(
              children: [
                Text("Meus Boletos", style: TextStyles.titleBoldHeading),
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
