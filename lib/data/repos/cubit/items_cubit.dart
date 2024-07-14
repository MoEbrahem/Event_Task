import 'package:bloc/bloc.dart';
import 'package:untitled/data/model/itemsModel.dart';
import 'package:untitled/data/repos/home_repo.dart';

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  final HomeRepo homeRepo;
  List<ItemsModel> listItems = [];
  ItemsCubit(this.homeRepo) : super(ItemsInitial());

  Future<List<ItemsModel>> fetchData() async {
    listItems = await homeRepo.fetchData();
    emit(ItemsSuccessState(listItems));
    return listItems;
    
  }
}
