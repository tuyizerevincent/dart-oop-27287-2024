// Student Name: Tuyizere Vincent
// Registration Number: 27287
// Assignment: Kigali Bus Card

class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up method
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay method
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

// PART 2: StudentCard
class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Student discount payment
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}

// PART 3: Main method
void main() {
  // My personal numbers
  // Registration Number: 27287
  // D = 87, L = 7
  // Starting balance = 1870 RWF
  // Bus fare = 287 RWF
  // Student discount = 17%

  // Create a normal bus card
  BusCard card = BusCard('Ama', 1870);

  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change owner to full name
  card.owner = 'Tuyizere Vincent';
  card.showInfo();

  // TODO 6: Test top up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay bus fare two times
  card.pay(287);
  card.pay(287);
  card.showInfo();

  // TODO 8: Create student card
  StudentCard student = StudentCard(
    'Tuyizere Vincent',
    1870,
    17
  );

  // TODO 9: Pay using student card
  student.pay(287);
  student.showInfo();
}
