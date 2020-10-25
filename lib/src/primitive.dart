import 'dart:math';

class Primitive {

  int someNumber;

  Primitive() : this.someNumber = Random.secure().nextInt(1000000);

  @override
  String toString() {
    return 'Primitive { someNumber: $someNumber }';
  }
}