 ## Technical jargon:
 * Type inference
 * Type conversion
 * Type casting
 * Optionally-typed
 
 **Type** is a way to tell the compiler how we plan to use some data. We have couple of data types in Dart these are as follows:
 * int
 * double
 * num
 * dynamic
 * String

## Type inference

We can explicitly add the type when we declare a variable. This is called **Type annotation**. For example:

```Dart
void main(){
 // Mutable variable
 int firstVar = 10;  // giving type to variable
 
 // Immutable-variable
 const double doubleVar = 3.1156;
}
```

As we explicitly give type to our variables but Dart compiler can deduce this as well. Compiler can figure out on its own through a process called **type inference.** So its safe to modify above code as:
```dart
void main(){
 const doublevar = 3.14587; 
 const intVar = 78;
}
```

We can also check the type at runtime in Dart. 
```dart
void main(){
 num doubleVar = 3.14;
 print(doubleVar is double); //true
 print(doubleVar is int); //false
 
 // using the runtimeType property for all types we can use
 print(doubleVar.runtimeType);  //double
}
```

## Type Conversion
Converting one type to another type is called **type conversion.** Dart disallows us from assigning a value of one type to another and avoids these issues.

```dart
void main(){
 var integer = 45;
 var decimal  =58.56;
 integer = decimal;  //ERROR not allowed can't assign double to int
 
 integer = decimal.toInt(); // integer = 58
}
```

## Type casting
At other times, we may have a variable of some general supertype, but we need functionality that is only available in a subtype. If we’re sure that the value of the variable actually is the subtype we need, then we can use the as keyword to change the type. This is known as **type casting.**
For example
```dart
void main(){
 num someVar = 3;
 print(someVar.isEven); //Error: The getter 'isEven' isn't defined for the type 'num'
}
```
someVar is too general of a type to know anything about even or odd numbers. only integers can be even or odd; so the issue is that num could potentially be a double at runtime, since num includes both double and int. To cast soneVar into int we can do :
```dart
void main(){
 final someInt = somevar as int;
 print(someInt.isEven); //false No ERRORS
}
```

We need to be careful with type casting, though. If we cast to the wrong type, we’ll get a runtime error:
```dart
void main(){
 num someNumber = 3;
 final someDouble = someNumber as double;
 // _CastError (type 'int' is not a subtype of type 'double' in type cast)
}
```

The runtime type of someNumber is int, not double. In Dart, we’re not allowed to cast to a sibling type, such as int to double. we can only cast down to a subtype.
 

## 
