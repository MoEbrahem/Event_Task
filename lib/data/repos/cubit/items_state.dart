part of 'items_cubit.dart';

abstract class ItemsState {}

final class ItemsInitial extends ItemsState {}

final class ItemsSuccessState extends ItemsState {
  final List<ItemsModel> item;
  

  ItemsSuccessState(this.item);
  
}

final class ItemsLoadingState extends ItemsState {
  ItemsLoadingState();
}
