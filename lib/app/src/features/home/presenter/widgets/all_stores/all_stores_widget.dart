import 'package:face_offood/face_offood.dart';
import 'package:flutter/material.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({Key? key, required this.tabController})
      : super(key: key);

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CategoryListWidget(items: [
          CategoryListItem(
            onTap: (item) {
              widget.tabController.animateTo(1);
            },
            label: 'Restaurantes',
            imgUrl: _urlBurgs,
          ),
          CategoryListItem(
            onTap: (item) {
              widget.tabController.animateTo(2);
            },
            label: 'Meracado',
            imgUrl: _urlMaket,
          ),
          CategoryListItem(
            onTap: (item) {
              widget.tabController.animateTo(3);
            },
            label: 'Bebidas',
            imgUrl: _urlDrinks,
          ),
          CategoryListItem(
            onTap: (item) {
              widget.tabController.animateTo(4);
            },
            label: 'Fármacia',
            imgUrl: _urlPharm,
          ),
          CategoryListItem(
            onTap: (item) {
              widget.tabController.animateTo(5);
            },
            label: 'Pets Shop',
            imgUrl: _urlPetsShop,
          ),
        ])
      ],
    );
  }
}

const String _urlBurgs =
    'https://img.freepik.com/free-vector/blackboard-background-with-burger_23-2148907814.jpg?w=740&t=st=1676959527~exp=1676960127~hmac=5a0ad701f926dedb60794eed2d940f0fb75bbacf660b0731139e9c114f8a7335';
const String _urlMaket =
    'https://img.freepik.com/free-vector/supermarket-display-stand-retro-composition-poster-with-dairy-products-fruits-shelves_1284-9984.jpg?w=826&t=st=1676959431~exp=1676960031~hmac=8cc78975d201ed30670e22a94495db0b3ca60acb34703d0e7baadbf57ebc8569';

const String _urlDrinks ='https://img.freepik.com/free-photo/beer-is-pouring-into-glass_144627-6839.jpg?w=740&t=st=1676958940~exp=1676959540~hmac=b0fe12f09d9bd0bea98ca10596b4d1ba7e7b1cb1a7a82bd0336ae95132c7d600';
const String _urlPharm = 'https://img.freepik.com/free-vector/pharmacy-background-design_1300-137.jpg?w=740&t=st=1676959106~exp=1676959706~hmac=721f255b762bf173a35e6c62236830cda68d5cb3bdbc83a3e33fabc9c2cf0e02';

const String _urlPetsShop =
'https://img.freepik.com/free-vector/animals-shop-abstract-concept-illustration-animals-supplies-online-pet-goods-e-shop-buy-puppy-medicine-food-accessories-pets-grooming-cosmetics-website_335657-3642.jpg?w=740&t=st=1676959221~exp=1676959821~hmac=c1a9fd0ec9f0fdf28952ee2fa8e735b944fffdd071f8cd4d0f3d7d4257805584';