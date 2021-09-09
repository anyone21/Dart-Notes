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
