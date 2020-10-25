class DynamicArray<T> {
  DynamicArray() {
    this._arrayInit();
  }

  List<T> dynamicArray;
  int currentSize;
  int maxSize = 1;
  final double expandCoefficient = 1.5;

  void add(T data) {

  }

  T get(int index) {

  }

  void set(int index, T data) {

  }

  void removeAll() {

  }

  void arrayToString(String Function(T) objectToStringFunction) {

  }

  void sort(bool Function(T, T) comparator) {

  }

  void _arrayInit() {
    this.dynamicArray = new List<T>(maxSize);
    this.currentSize = 0;
  }

  void _expandArray() {

  }
}