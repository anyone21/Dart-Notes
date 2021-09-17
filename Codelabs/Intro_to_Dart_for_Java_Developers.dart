
// ---------------- CODE-1---------------------
// Mkaing a simple dart class
class Bicycle {
  int cadence;
  int _speed=10;  //private variable
  int get speed => _speed;  //getter 
  int gear;
  /*
   * Each variable (even if it's a number) must either be initialized 
   * or be declared nullable by adding ? to its type declaration.
   * */
  Bicycle(this.cadence, this.gear);
  
  void applyBrake(int decrement){
    _speed -= decrement;
  }
  void speedUp(int increment){
    _speed += increment;
  }
  
  @override
  String toString() => 'Bicycle: $_speed mph';
  /*
    The @override annotation tells the analyzer that you are intentionally
    overriding a member. The analyzer raises an error if you fail to properly 
    perform the override.
  */
}

void main(List<String> args) {
  var bike = Bicycle(2, 1);
  print(bike);
}

// ---------------- CODE-2---------------------
// Use optional parameters (instead of overloading)
import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;
  
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  /*
   
    > this.origin, this.width, and this.height use the shorthand trick for assigning instance variables inside a constructor's declaration.
    > this.origin, this.width, and this.height are optional named parameters. Named parameters are enclosed in curly braces ({}).
    > The this.origin = const Point(0, 0) syntax specifies a default value of Point(0,0) for the origin instance variable. The specified default must be a compile-time constant. This constructor supplies default values for all three instance variables.

   */
  @override
  String toString()=>'Origin:(${origin.x},${origin.y}), width: $width, height: $height';
}

main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

} // Included main() to suppress uncaught exception.



// ---------------- CODE-3---------------------
// Create a factory

// Abstract class in dart 
/*
An abstract class is a class that can’t be instantiated, instead they are used for defining interfaces that are used by other classes. Abstract classes can only be 
extended. Abstract classes are useful for defining blue-prints for other classes to implement.

Link : https://www.tutorialspoint.com/design_pattern/factory_pattern.htm
Video : https://www.youtube.com/watch?v=04J_fL5zg3U
*/
import 'dart:math';
/*
A factory pattern is a creational pattern that defines an Interface for creating an object and defers instantiation 
until runtime. used when you don't know how many or what type of objects will be needed until during runtime 
*/

abstract class Shape {
  num get area;
  String whatShape();
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * radius * radius;

  @override
  String whatShape() => 'I am a cricle';
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);

  String whatShape() => 'I am a Square';
}

main() {
  final circle = Circle(2);
  final square = Square(3);

  print(circle.whatShape());
  print(square.whatShape());
}


import 'dart:math';

abstract class Shape {
  num get area;
}
Shape shapeFactory(String type){
  if(type=='circle') return Circle(2);
  if(type == 'square') return Square(3);
  
  throw 'can\'t create $type';
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}

// ---------------- CODE-4---------------------
// Implement an interface

// he Dart language doesn't include an interface keyword because every class defines an interface.

// ---------------- CODE-5---------------------
//Use Dart for functional programming.
/*
In functional programming you can do things like the following:

> Pass functions as arguments.
> Assign a function to a variable.
> Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
    Create a nameless function that can be used as a constant value (also called a lambda expression; lambda expressions were added to Java 
    
    Dart supports all those features. In Dart, even functions are objects and have a type, Function. This means that functions can be assigned to 
    variables or passed as arguments to other functions. You can also call an instance of a Dart class as if it were a function, as in
*/
// imperative code
String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  for (var length in values) {
    print(scream(length));
  }
}

// functional code
String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  values.map(scream).forEach(print);
}

// AOT and JIT

terminology:
    aot: ahead-of-time
    jit: just-in-time

types:
    aot:
        - compilation takes place prior to running
        - compilation produces a native executable
        examples:
            - c
            - c++
            - rust
            - go
    pure jit:
        - compilation takes place as the program is running
        - source code is converted on the fly to machine code
        examples:
            - python (pypy)
            - javascript (newer versions)
            - ruby (newer versions)
            - php (newer versions)
    interpretation:
        - compilation never takes place
        - interpreters interpret source code and produce the desired results
        - no conversion to machine code occurs
        examples:
            - javascript (older versions)
            - ruby (older versions)
            - php (older versions)
    intermediate representation with or without jit:
        - compilation to bytecode takes place prior to running
        - compilation produces bytecode designed to be interpreted
        - various bytecode interpreters are used to perform execution
        - bytecode intepreters can and usually do jit compile
          bytecode to machine code
        examples:
            - java
            - c#
            - c++ (.net)
            - python (cpython)
