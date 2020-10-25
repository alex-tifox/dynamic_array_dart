class DynamicArray<T> {
  DynamicArray() {
    this._arrayInit();
  }

  List<T> dynamicArray;
  int currentSize;
  int maxSize = 1;
  final int expandCoefficient = 2;

  void add(T data) {
    if (this.currentSize == this.maxSize) {
      _expandArray();
    }

    this.dynamicArray[currentSize] = data;
    this.currentSize += 1;
  }

  T get(int index) {
    if (index > this.currentSize || index < 0) {
      return null;
    } else {
      return this.dynamicArray[index];
    }
  }

  void set(int index, T data) {
    if (index > this.currentSize || index < 0) {
      return;
    } else {
      this.dynamicArray[index] = data;
    }
  }

  void removeAll() {
    for (int i = 0; i < this.currentSize; i++) {
      this.dynamicArray[i] = null;
    }

    this.dynamicArray = null;
    _arrayInit();
  }

  void arrayToString(String Function(T) objectToStringFunction, [int amountOfData]) {
    int amountOfElements = amountOfData ?? this.currentSize;
    if (amountOfElements <= this.currentSize && amountOfElements > 0) {
      _printInfoAboutArray(objectToStringFunction, amountOfElements);
    } else {
      throw Exception('Illegal argument exception. Amount of data is not valid');
    }
  }

  void sort(bool Function(T, T) comparator) {

  }

  void _arrayInit() {
    this.maxSize = 1;
    this.currentSize = 0;
    this.dynamicArray = new List<T>(maxSize);
  }

  void _expandArray() {
    List<T> newDynamicArray = new List<T>(this.maxSize * this.expandCoefficient);

    for (int i = 0; i < this.currentSize; i++) {
      newDynamicArray[i] = this.dynamicArray[i];
    }
    this.dynamicArray = null;
    this.dynamicArray = newDynamicArray;
    this.maxSize *= this.expandCoefficient;
  }

  void _printInfoAboutArray(String Function(T) objectToStringFunction, int amountOfArrayElements) {
    print("Current size is: ${this.currentSize}");
    print("Max size is: ${this.maxSize}");
    for (int i = 0; i < amountOfArrayElements; i++) {
      print(objectToStringFunction(this.dynamicArray[i]));
    }
  }
}