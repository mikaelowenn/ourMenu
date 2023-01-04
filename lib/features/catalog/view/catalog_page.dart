import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_marketplace_app/features/cart/cart.dart';
import 'package:mini_marketplace_app/features/catalog/catalog.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
        actions: [
          IconButton(
            iconSize: 32,
            icon: Center(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Center(child: Icon(Icons.shopping_cart)),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      if (kDebugMode) print("Count : ${state.cartItemList.length}");

                      if (state.cartItemList.isEmpty) {
                        return const SizedBox();
                      }
                      return Container(
                        width: 20,
                        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                        child: Center(
                          child: Text(
                            "${state.cartItemList.length}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            tooltip: 'Keranjang',
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (context) => const CartPage(),
              );
              Navigator.of(context).push(route);
            },
          )
        ],
      ),
      body: const CatalogView(),
    );
  }
}
