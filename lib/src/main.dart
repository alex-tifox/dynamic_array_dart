import 'dart:math';

import 'dynamic_array.dart';
import 'primitive.dart';

class Main {

  static void main() {
    DynamicArray<Primitive> dynamicArray = new DynamicArray();
    final int order = 5;
    final int numberOfElements = pow(10, order);

    int t1 = DateTime.now().millisecondsSinceEpoch;
    double maxTimePerElement = 0.0, worstTimePerElement;
    int worstIndex;

    for (int i = 0; i < numberOfElements; i++) {
      int t1_element = DateTime.now().millisecondsSinceEpoch;

      dynamicArray.add(Primitive());
      int t2_element = DateTime.now().millisecondsSinceEpoch;
      double timePerElement = (t2_element - t1_element) / 1000;

      if (timePerElement > maxTimePerElement) {
        maxTimePerElement = timePerElement;
        worstTimePerElement = timePerElement;
        worstIndex = i;
        print('Index is: $i. Bad time: $timePerElement seconds');
      }
    }

    dynamicArray.sort((left, right) => left.someNumber > right.someNumber);

    int t2 = DateTime.now().millisecondsSinceEpoch;
    double time = (t2 - t1) / 1000;
    print('Worst index: $worstIndex. Bad time: $worstTimePerElement seconds');
    print('All time is: $time seconds');

    dynamicArray.arrayToString((number) => number.toString(), 20);
    dynamicArray.removeAll();
  }
}

void main() => Main.main();