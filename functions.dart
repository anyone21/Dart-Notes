// Mini-ex1

String youAreWonderful({String name, int numberPeople=30}) {
  return 'You\'re wondeful, $name. $numberPeople people think so.';
}

// Mini- ex2

void main() {
  final wonderful = (String name) {
    return 'You\'re wonderful, $name.';
  };

  const people = ['Chris', 'Tiffni', 'Rohan', 'Rakesh'];

  people.forEach((p) {
    print(wonderful(p));
  });
}


// Mini- ex3


void main() {
  final wonderful = (String name) {
    return 'You\'re wonderful, $name.';
  };

  const people = ['Chris', 'Tiffni', 'Rohan', 'Rakesh'];

  people.forEach((p) => print(wonderful(p));
}

// Challenges

