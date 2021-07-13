import 'package:flutter/material.dart';
import 'package:nlw_together/modules/extract/extract_page.dart';
import 'package:nlw_together/modules/home/home_controller.dart';
import 'package:nlw_together/modules/meus_boletos/meus_boletos_page.dart';
import 'package:nlw_together/shared/models/user_model.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key key, @required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    MeusBoletosPage(key: UniqueKey()),
    ExtractPage(key: UniqueKey(),),
    Container(color: Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: TextStyles.titleRegular,
                    children: [
                      TextSpan(
                          text: "${widget.user.name}",
                          style: TextStyles.titleBoldBackground)
                    ]),
              ),
              subtitle: Text("Mantenha suas contas em dia",
                  style: TextStyles.captionShape),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: NetworkImage(widget.user.photoUrl))),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.home,
                    color: controller.currentPage == 0
                        ? AppColors.primary
                        : AppColors.body),
                onPressed: () {
                  controller.setPage(0);
                  setState(() {});
                }),
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, "/barcode_scanner");
                setState(() {});
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
                icon: Icon(Icons.description_outlined,
                    color: controller.currentPage == 1
                        ? AppColors.primary
                        : AppColors.body),
                onPressed: () {
                  controller.setPage(1);
                  setState(() {});
                })
          ],
        ),
      ),
    );
  }
}
