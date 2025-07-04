import 'package:meublili/model/items.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class Favorites extends Notifier<Set<Items>> {
  //init value
  @override
  Set<Items> build() {
    return const {};
  }

  void addItem(Items item) {
    if (!state.contains(item)) {
      state = {...state, item};
    }
  }

  void deleteItem(Items item) {
    state = {...state}..remove(item);
  }
}

final favoritesNotifier = NotifierProvider<Favorites, Set<Items>>(() {
  return Favorites();
});
