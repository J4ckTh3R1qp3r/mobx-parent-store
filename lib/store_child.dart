import 'package:mobx/mobx.dart';
import 'store_main.dart';

part 'store_child.g.dart';

class StoreChildStore = StoreChild with _$StoreChildStore;

abstract class StoreChild with Store {
  StoreChild({this.parent});

  StoreMain parent;

  void dispose() {
    parent = null;
  }

  @action
  void incrementCounter() {
    parent.counter++;
  }
}
