import 'package:flutter/material.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';
import 'package:nlw_together/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:nlw_together/shared/widgets/divider/divider_widget.dart';
import 'package:nlw_together/shared/widgets/label_button/label_button.dart';
import 'package:nlw_together/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível identificar um código de barras.",
      subtitle: "Tente escaner novamente ou digite o código do seu boleto.",
      primaryLabel: "Escanear novamente",
      primaryOnPressed: (){},
      secondaryLabel: "Digitar o código",
      secondaryOnPressed: (){},
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text("Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground),
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.black,
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  )),
              Expanded(
                  child: Container(
                color: Colors.black,
              )),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir código do boleto", primaryOnPressed: () {},
            secondaryLabel: "Adicionar da galeria", secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
