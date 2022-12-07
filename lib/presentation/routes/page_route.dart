import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/artikel_screen/artikel.dart';
import 'package:marketplace/presentation/screens/navigation/navigation.dart';

import '../screens/detail_artikel_screen/detail_artikel_screen.dart';

class AppPage {
  static final pages = {
    RouteName.navigation: (context) => const Navigation(),
    RouteName.artikelScreen: (context) => const ArtikelScreen(),
    RouteName.detailArtikelScreen: (context) => const DetailArtikelScreen(),
  };
}
