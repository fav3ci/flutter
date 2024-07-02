class animal {
  void makesound() {
    print('some animal sound');
  }
}

class dog extends animal {
  @override
  void makesound() {
    print('bark');
  }
}

void main() {
  dog mydog = dog();
  mydog.makesound();
}
