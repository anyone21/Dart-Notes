// Mini-exercise-1
import 'dart:math';

void main(List<String> args) {
  print(sin(45 * (pi / 180)));
  print(1 / sqrt(2));
}

// Mini-exercise-2
void main(List<String> args) {
  const int myAge = 24;
  double averageAge = 24;
  averageAge = (averageAge + 24) / 2;

  const testNumber = 454;
  const evenOdd = testNumber % 2;
  testNumber = 545;
  print(evenOdd);
}


// Challenge-1
void main(List<String> args) {
  const int myAge = 24;
  int dogs = 0;
  dogs += 1;
}

// challenge-2
void main(List<String> args) {
  var age = 16;    // var and int will work
  print(age);

  age = 32;
  print(age);
}


// challenge-3
void main(List<String> args) {
  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y;
  const answer2 = (x * 100) + (y * 100);
  const answer3 = (x * 100) + (y / 10);

  print(answer1);   // 4610
  print(answer2);   // 5600
  print(answer3);   // 4601.0
}


//challenge-4
void main(List<String> args) {

  const double rating1 = 441.564;
  const double rating2 = 5464.4;
  const double rating3 = 45.56;

  const averageRating = (rating1 + rating2 + rating3) / 3;

  print(averageRating);
}

