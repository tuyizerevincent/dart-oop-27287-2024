// Student: Tuyizere Vincent
// Registration Number: 27287
// Part 4: Bug Hunt

class Phone {
  String _brand = '';
  int _battery = 0;

  // Constructor
  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  // Getter for battery
  int get battery {
    return _battery;
  }

  // Setter for battery
  set battery(int value) {
    if (value >= 0 && value <= 100) {
      _battery = value;
    }
  }

  // Restart method
  void restart() {
    print('Restarting phone');
  }
}

class SmartPhone extends Phone {
  String _system = '';

  // Constructor
  SmartPhone(String brand, int battery, String system)
      : super(brand, battery) {
    _system = system;
  }

  @override
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  Phone p = new Phone('Tecno', 50);

  p.battery = 100;

  print(p.battery);
}
