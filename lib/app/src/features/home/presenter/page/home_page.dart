import 'package:flutter/material.dart';
import '../widgets/all_stores/all_stores_widget.dart';
import '../widgets/drink_stores/drink_stores_widget.dart';
import '../widgets/drugs_stores/restaurants_widget.dart';
import '../widgets/markets/markets_widget.dart';
import '../widgets/pet_stores/pet_stores_widget.dart';
import '../widgets/restourants/restaurants_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final _tabController = TabController(length: 6, vsync: this);
  @override
  Widget build(BuildContext context) {
    super.build(context);
    super.updateKeepAlive();
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Inicio'),
                Tab(text: 'Restaurantes'),
                Tab(text: 'Mecados'),
                Tab(text: 'Bebidas'),
                Tab(text: 'Fármacias'),
                Tab(text: 'Pets Shop'),
              ],
              isScrollable: true,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black87,
            ),
          ),
          body: TabBarView(controller: _tabController, children:  [
             AllStoresWidget(tabController: _tabController),
            const RestaurantsWidget(),
            const MarketsWidget(),
            const DrinkStoresWidget(),
            const DrugsStoresWidget(),
            const PetStoresWidget()
          ]),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
