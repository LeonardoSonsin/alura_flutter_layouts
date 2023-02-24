import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  final List items = comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Menu",
                style: TextStyle(fontFamily: "Caveat", fontSize: 32.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return FoodItem(
                imageURI: items[index]["image"],
                itemTitle: items[index]["name"],
                itemPrice: items[index]["price"],
              );
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}
