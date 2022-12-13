import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/detail_chat_screen.dart/components/build_popup_chat.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../widget/build_app_bar.dart';
import 'components/build_body.dart';

class DetailChatScreen extends StatefulWidget {
  const DetailChatScreen({super.key});

  @override
  State<DetailChatScreen> createState() => _DetailChatScreenState();
}

class _DetailChatScreenState extends State<DetailChatScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              CircleAvatar(
                maxRadius: 18,
                child: Container(
                  width: size.width * 0.15,
                  height: size.height * 0.15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/avatars.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akbar Maulana",
                    style: text3(neutral100, semibold),
                  ),
                  Text(
                    "Online",
                    style: text4(neutral100, regular),
                  ),
                ],
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => const BuildPopupChat());
                },
                icon: const Icon(
                  IconlyLight.moreCircle,
                  size: 30,
                )),
          ],
          flexibleSpace: BuildAppbar(size: size),
        ),
      ),
      body: const BuildBody(),
    );
  }
}
