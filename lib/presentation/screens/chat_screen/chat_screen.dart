import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/chat_screen/components/build_filter.dart';
import '../../../utilities/color.dart';
import '../../../utilities/text_styles.dart';
import '../widget/build_app_bar.dart';
import 'components/build_body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Widget customTitle = const Text("Chat");
  Icon customIcon = const Icon(IconlyLight.search, size: 30);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          title: customTitle,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (customIcon.icon == IconlyLight.search) {
                      customIcon = const Icon(Icons.cancel);
                      customTitle = FormBuilder(
                          child: Container(
                        decoration: BoxDecoration(
                            color: neutral100,
                            borderRadius: BorderRadius.circular(10)),
                        child: FormBuilderTextField(
                          name: "search",
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Cari..",
                              hintStyle: text3(neutral300, regular),
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                IconlyBroken.search,
                                size: 20,
                              )),
                        ),
                      ));
                    } else {
                      customIcon = const Icon(IconlyLight.search, size: 30);
                      customTitle = const Text("Chat");
                    }
                  });
                },
                icon: customIcon),
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => const BuildFilter(),
                  );
                },
                icon: const Icon(
                  IconlyLight.filter,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.setting,
                  size: 30,
                ))
          ],
          flexibleSpace: BuildAppbar(size: size),
        ),
      ),
      body: const BuildBody(),
    );
  }
}
