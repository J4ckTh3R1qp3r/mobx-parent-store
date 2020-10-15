import 'package:mobx/mobx.dart';
import 'store_child.dart';

part 'store_main.g.dart';

class StoreMainStore = StoreMain with _$StoreMainStore;

abstract class StoreMain with Store {
  StoreMain() {
    child = StoreChildStore(parent: this);
  }
  StoreChildStore child;

  @observable
  int counter = 0;
}
