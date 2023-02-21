import 'package:face_offood/face_offood.dart';
import 'package:flutter/material.dart';
import 'package:gfood/app/src/features/dashbord/presenter/page/widgets/icon_face_bar.dart';
import '../../../home/presenter/page/home_page.dart';
import '../../../order/presenter/page/order_page.dart';
import '../../../profile/presenter/page/profile_page.dart';
import '../../../saech/presenter/page/search_page.dart';

class DashBordPage extends StatefulWidget {
  const DashBordPage({Key? key}) : super(key: key);

  @override
  State<DashBordPage> createState() => _DashBordPageState();
}

class _DashBordPageState extends State<DashBordPage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          const HomePage(),
          SearchPage(),
          const OrderPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: FaceOfFoodBottonNavigationBar(
          onIndexSelected: (index) => pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 800),
                curve: Curves.linear,
              ),
          itens: [
            FaceOfFoodBottonBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
              activeIcon: const Icon(Icons.home_outlined),
            ),
            FaceOfFoodBottonBarItem(
              icon: const Icon(Icons.search),
              label: 'Busca',
              activeIcon: const Icon(Icons.search_outlined),
            ),
            FaceOfFoodBottonBarItem(
              icon: const IconFaceBar(
                icon: Icon(
                  Icons.file_copy,
                ),
                couterBadge: 3,
              ),
              label: 'Pedidos',
              activeIcon: const IconFaceBar(
                icon: Icon(
                  Icons.file_copy,
                ),
                couterBadge: 3,
              ),
            ),
            FaceOfFoodBottonBarItem(
              icon: const Icon(Icons.person),
              label: 'Perfil',
              activeIcon: const Icon(Icons.person_outlined),
            ),
          ]),
    );
  }
}
