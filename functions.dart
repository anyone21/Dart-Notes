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


// Challenges=1

import 'dart:math';

bool prime(int number) {
  int count = 1;
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      count++;
      break;
    }
  }
  if (count >= 2) {
    return false;
  } else {
    return true;
  }
}

void main() {
  print(prime(10));
}

//challenge 2
int repeatTask(int times, int input, Function task) {
  while (times>0) {
    input = task(input);
    times--;
  }
  return input;
}

void main(List<String> args) {
  final output = repeatTask(4, 2, (int a) {
    return a * a;
  });
  print(output);
}

                 
// challenge-3
                 
int repeatTask(int times, int input, Function task) {
  while (times>0) {
    input = task(input);
    times--;
  }
  return input;
}

void main(List<String> args) {
  final output = repeatTask(4, 2, (int a) => (a * a));
  print(output);
}
