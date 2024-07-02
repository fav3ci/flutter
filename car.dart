class car {
  String brand;
  String model;
  int year;

  car(this.brand, this.model, this.year);
  void displaydetails() {
    print("car details");
    print("brand=$brand");
    print("model=$model");
    print("year=$year");
  }
}

void main() {
  car mycar = car('nissan', 'patrol', 2024);
  mycar.displaydetails();
}
