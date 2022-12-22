import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/detail_profil/components/user_profil.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyDetailProfil extends StatefulWidget {
  const BodyDetailProfil({Key? key}) : super(key: key);

  @override
  State<BodyDetailProfil> createState() => _BodyDetailProfilState();
}

class _BodyDetailProfilState extends State<BodyDetailProfil> {
  int indexPage = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.wait([
        // Provider.of<PengalamanProyekViewModel>(context, listen: false)
        //     .getDatas()
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: size.height * 0.2,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1)),
                  ],
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                      scale: 1,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/people.png")),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Dani Kurniawati",
                // penggunaViewModel.dataPengguna != null
                //     ? penggunaViewModel.dataPengguna!.namaPengguna
                //     : "-",
                style: text2(neutral100, bold)),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Sleman, Yogyakarta",
              // "${penggunaViewModel.wilayahData != null ? penggunaViewModel.wilayahData!.wilayah : "-"}, ${penggunaViewModel.prov != null ? penggunaViewModel.prov! : ""}",
              style: text4(neutral100, regular),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
        Expanded(
            child: Container(
          width: size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  setState(() {
                    indexPage = index;
                  });
                },
                indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(color: primary, width: 1),
                    insets: EdgeInsets.symmetric(horizontal: 10)),
                isScrollable: false,
                tabs: [
                  Tab(
                    child: Text(
                      "Informasi Profil",
                      style: text3(indexPage == 0 ? primary : neutral200, bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Profil(),
                    ]),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
