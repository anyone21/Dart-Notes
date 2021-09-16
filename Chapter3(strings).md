## Technical Jargon
* Strings
* Concatenation
* Interpolation
* Raw strings


### String concatenation
We you need to manipulate a string, and one common way to do so is to combine it with another string. This is called concatenation...with no relation to the
aforementioned felines. In Dart, you can concatenate strings simply by using the addition operator. Just as you can add
numbers, you can add strings:
```Dart
var message = 'Hello' + ' my name is ';
const name = 'Ray';
message += name;
// 'Hello my name is Ray'
```

Another way to string concatenation is using **string buffer**
```dart
final message = StringBuffer();
message.write('Hello');
message.write(' my name is ');
message.write('Ray');
message.toString();
// "Hello my name is Ray"
```
This creates a mutable location in memory where you can add to the string without having to create a new string for every change. When you’re all done, you use toString to convert the string buffer to the String type. This is similar to what you saw with type conversion earlier with toInt.


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
