import 'package:flutter/material.dart';
import 'package:mini_marketplace_app/features/cart/bloc/cart_bloc.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({Key? key, required this.state}) : super(key: key);

  final CartState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout, size: 32),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.totalSelectedItem < 1 ? "Checkout" : "Checkout (${state.totalSelectedItem})",
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  state.totalSelectedItem < 1
                      ? const SizedBox()
                      : Text(
                          "Total Rp${state.totalSelectedItemPrice}",
                          style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                ],
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(275, 75),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
            ),
          ),
        )
      ],
    );
  }
}
