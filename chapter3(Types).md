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
 

## Optionally typed

Programming languages are either dynamic-typed or static-typed in nature. For a dynamically typed langauage types can change at runtime. For example:
```dart
void main() {
 var myVar = 32;
 myVar = 'Hello';  //Showing dynamic nature
 
 var result = myVar*3; // is not possible practically for Strings
}
```
But to prevent above mistakes in dart it have a solution by providing **optionally-typed langauage.** That means you can choose to use Dart as a dynamically typed language or as a staticallytyped language. Static means that something cannot change; once you tell Dart what type a variable is, you’re not allowed to change it
anymore.

```dart 
void main(){
 var myVariable = 42;
 myVariable = 'hello'; // compile-time error
}
```

The Dart compiler will immediately tell us that it’s an error. That makes type errors trivial to detect. The creators of Dart did include a **dynamic** type for those who wish write their programs in a dynamically-typed way.
```dart
void main(){
 dynamic myVariable = 42;
 myVariable = 'hello'; // OK
}
```

In fact, this is the default if you use var and don’t initialize your variable:
```dart
var myVariable; // defaults to dynamic
myVariable = 42; // OK
myVariable = 'hello'; // OK
```

If you need to explicitly say that any type is allowed, you should consider using the Object? type.
```dart
Object? myVariable = 42;
myVariable = 'hello'; // OK
```

