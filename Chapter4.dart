// Mini-exercise 1
void main(List<String> args) {
  const myAge = 24;
  const isTeenager = (myAge >= 13 && myAge <= 19);
  // print(isTeenager);

  const maryAge = 30;
  const isTeenMary = (maryAge >= 13 && maryAge <= 19);
  const bothTeenagers = isTeenMary && isTeenMary;

  const String reader = 'ujjwal';
  const String ray = 'Ray Wenderlich';
  const bool rayIsReader = reader == ray;
  print(rayIsReader);
}


//MinEx -2
//1
void main(List<String> args) {
  const myAge = 24;
  if (myAge >= 13 && myAge <= 19) {
    print('Teenager');
  } else {
    print('Not a teenager');
  }
}

//2
void main(List<String> args) {
  const myAge = 24;
  const answer = (myAge >= 13 && myAge <= 19) ? 'Teenager' : 'Not a teenager';
  print(answer);
}


// Mini-exercise 3
enum AudioState { playing, paused, stopped }

void main(List<String> args) {
  const audioState = AudioState.stopped;
  switch (audioState) {
    case AudioState.playing:
      print("Audio is playing");
      break;
    case AudioState.paused:
      print("Audio is paused");
      break;
    case AudioState.stopped:
      print("Audio is stopped");
      break;
    default:
      print('Nothing happen');
  }
}


// challenge-1
const firstName = 'Bob';
if (firstName == 'Bob') {
  const lastName = 'Smith';  
} else if (firstName == 'Ray') {
  const lastName = 'Wenderlich';
}
final fullName = firstName + ' ' + lastName;  // lastName is undefined ERROR
// lastName is defined inside if and else block. So it give error on last line 

// challenge-2
true && true    ----------------    true
false || false  ----------------     false 
(true && 1 != 2) || (4 > 3 && 100 < 1)  -----------   true
((10 / 2) > 3) && ((10 % 2) == 0) ------------  true
  
// challenge -3
// Challenge 3: Next power of two
// Given a number, determine the next power of
// two above or equal to that number. Powers of
// two are the numbers in the sequence of 2¹, 2²,
// 2³, and so on. You may also recognize the series
// as 1, 2, 4, 8, 16, 32, 64...
  
  
//challenge-4
int fibnacci(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return fibnacci(n - 1) + fibnacci(n - 2);
}

void main() {
  int n = 5;
  print(fibnacci(n));
}


//challenge-5
var sum = 0;
for (var i = 0; i <= 5; i++) {
    sum += i;
} 
// number of iterations : 6
// sum = 15

// challeng-6
for(int i=10;i>=0;i--){
  print(i);
}


//challenge-7
void main() {
  for (double i = 0.0; i <= 1; i += 0.1) {
    print(i.toStringAsFixed(1));
  }
}
