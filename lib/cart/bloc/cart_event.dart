part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CartEventAddItem extends CartEvent {
  CartEventAddItem({required this.item, this.count = 1});

  final Item item;
  final int count;

  @override
  List<Object?> get props => [item, count];
}

class CartEventRemoveItem extends CartEvent {
  CartEventRemoveItem({required this.item});

  final CartItem item;

  @override
  List<Object?> get props => [item];
}

class CartEventRemoveAllItem extends CartEvent {
  CartEventRemoveAllItem();

  @override
  List<Object?> get props => [];
}

class CartEventSelectItem extends CartEvent {
  CartEventSelectItem({required this.item, required this.select});

  final CartItem item;
  final bool select;

  @override
  List<Object?> get props => [item, select];
}

class CartEventSelectAllItem extends CartEvent {
  CartEventSelectAllItem({required this.select});

  final bool select;

  @override
  List<Object?> get props => [select];
}
