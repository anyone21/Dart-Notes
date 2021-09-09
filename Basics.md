# Technical Jargon
* Commenting Code
* Statement
* Expression
* Type
* Variables
* num
* dynamic
* Type inference
* var
* constants
* Immmutable and mutable data


## Commenting Code
We can document our code through the use of commnets. These allow us to write any text directly along side our code and are ignored by the compiler.
Different types of comments in Dart:
* Single line comment
```Dart
void main(){
  //This is a single line comment
}
```

* Block line comment
```Dart
  /* 
    This is a multi-line comment.
    This can comment multiple lines.
  */
```

* Documentation comments
```Dart
  /// These comments begin with ///, these comments are used to add documnetation comments to our code
```

## Statements and Expression
* **Statements** : It is a command, something we tell the computer to do. For example:
```Dart
 void main(){
    print("Hello, World");  //This is a statement
```

* **Expressions** : An expression doesn't do something; it is something. That is, an expression is a value, or is something that can be calculated as a value.
```Dart
void main(){
  8*565
  x
  'Hey, I am an expression';
```

## Naming data
* **Type: ** It denotes what sort of data the name refers to, such as text, numbers or a date.
* **Variables: ** It declare a storage place and also define type of data.
```dart
void main(){
  int number = 10; //integer variable
  double apple = 48.8; //double variable
}
```

> Note: Every other value that we can assign to a variable are objects in Dart. In fact dart doesn't have the primitive variable types that that exists in some programming languages. **Everything is an object.** For example, **int** and **double** look like primitives, they're subclasses of **num,** which is a subclass of **object.**


## Type Safety : We can not change the type of a varaible once defined. Type safety will save us from errors occur due to wrong type given to a variable. But in some situations it's useful to assign related types to the same varaible. For example,
```dart
void main(){
  num myNumber;   // num type can be either int or double.
  myNumber = 10; // OK
  myNumber = 3.14159; // OK
  myNumber = 'ten'; // No, no, no.
}
```

Also, dart provide an another type **dynamic.** This let's us assign any type we like to our variable and compiler won't warn us.
```dart
void main(){
  dynamic myVariable;
  myVariable = 10; // OK
  myVariable = 3.14159; // OK
  myVariable = 'ten'; // OK
  
  // Note: Try to avoid using dynamic in our code.
}
```

## Type inference: Dart provide this functionality where we don't have to tell it the type of a variable. The **var** keyword says, "Use whatever type is appropriate".For example,
```dart
void main(){
  var data = 10;  // Dart infers the type of data and makes it int.
}
```

## Constants
Mutable data are those variables whose value can be changed but immutable data are unchangeable variables. Dart is having two type of variable whose value never change:
* const : Once declared, can't be changed and it also infer the type of that variable.
* final constants : Many a times it happens we want a constant in our code but we don't know its value during compile time but we get its value after program start running. This kind of constant are called **runtime constants.**

```dart
//Constant
 void main(){
  const myVar = 10;
  myVar = 484; // Not allowed
}
```

```dart
//final
void main(){
  final hoursSinceMidnight = DateTime.now().hour;
  // hoursSinceMidnight value get set at runtime
  hoursSinceMidnight = 0; //Error because we try to change the final constant after it’s already been set
```

> Note: const is only used for compile-time constants; that is, for values that can be determined by the compiler before the program ever starts running.


