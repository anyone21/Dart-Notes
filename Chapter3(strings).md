## Technical Jargon
* Strings
* Concatenation
* Interpolation
* Raw strings


### String concatenation

### String Interpolation
We can also build up a string by using interpolation, which is a special Dart syntax that lets you build a string in a manner that’s easy for other people reading your code to understand:
```dart
const name = 'Ray';
const introduction = 'Hello my name is $name
';
// 'Hello my name is Ray'
```


### Raw strings
Sometimes you want to ignore any special characters that a string might contain. To do that, you can create a raw string by putting r in front of the string literal.
```dart
const rawString = r'My name \n is $name.';
print(rawString) // My name \n is $name 
