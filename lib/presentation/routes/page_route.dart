import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/detail_chat_screen.dart/detail_chat_screen.dart';
import 'package:marketplace/presentation/screens/detail_history_screen/detail_history_screen.dart';
import 'package:marketplace/presentation/screens/keranjang_screen/keranjang_screen.dart';
import 'package:marketplace/presentation/screens/notification_screen/notifikasi_screen.dart';

import '../screens/artikel_screen/artikel.dart';
import '../screens/chat_screen/chat_screen.dart';
import '../screens/detail_artikel_screen/detail_artikel_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/navigation/navigation.dart';
import '../screens/onboarding_screen/onboarding_screen.dart';
import '../screens/register_screen/register_screen.dart';
import '../screens/welcome_screen/welcome_screen.dart';

class AppPage {
  static final pages = {
    RouteName.onboarding: (context) => const OnBoardingScreen(),
    RouteName.welcome: (context) => const WelcomeScreen(),
    RouteName.register: (context) => const RegisterScreen(),
    RouteName.login: (context) => const LoginScreen(),
    RouteName.navigation: (context) => const Navigation(),
    RouteName.artikel: (context) => const ArtikelScreen(),
    RouteName.detailArtikel: (context) => const DetailArtikelScreen(),
    RouteName.chat: (context) => const ChatScreen(),
    RouteName.detailChat: (context) => const DetailChatScreen(),
    RouteName.keranjang: (context) => const KeranjangScreen(),
    RouteName.notifikasi: (context) => const NotifikasiScreen(),
    RouteName.detailHistory: (context) => const DetailHistoryScreen(),
  };
}
