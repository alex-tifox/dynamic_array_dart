import 'package:dynamic_array_dart/src/dynamic_array.dart';
import 'package:test/test.dart';

void main() {
  test('Test on creation dynamic array of integers',() {
    DynamicArray<int> dynamicArray = DynamicArray<int>();
    var expectedMaxSize = 1;
    var expectedCurrentLength = 0;
    expect(dynamicArray.maxSize, expectedMaxSize);
    expect(dynamicArray.currentSize, expectedCurrentLength, );
  });

  test('Test of adding element to dynamic array', () {
    DynamicArray<int> dynamicArray = DynamicArray<int>();
    var intToBeAdded = 10;
    dynamicArray.add(intToBeAdded);
    expect(dynamicArray.dynamicArray.elementAt(0), intToBeAdded);
  });

  test('Test of getting the element from dynamic array', () {
    DynamicArray<int> dynamicArray = DynamicArray<int>();
    var intToBeGot = 10;
    dynamicArray.add(10);
    expect(dynamicArray.get(0), intToBeGot);
  });

  test('Test of setting the element in dynamic array', () {
    DynamicArray<int> dynamicArray = DynamicArray<int>();
    var intToBeSet = 10;
    dynamicArray.set(0, 10);
    expect(dynamicArray.get(0), intToBeSet);
  });

  test('Test of sorting the elements in dynamic array', () {
    DynamicArray<int> dynamicArray = DynamicArray<int>();
    dynamicArray.add(1);
    dynamicArray.add(4);
    dynamicArray.add(2);
    dynamicArray.add(6);
    dynamicArray.sort((left, right) => left > right);
    expect(dynamicArray.dynamicArray, [1, 2, 4, 6]);
  });
}