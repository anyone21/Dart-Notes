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
