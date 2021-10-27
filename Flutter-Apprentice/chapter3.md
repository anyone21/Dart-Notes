## Basic Widgets
Everything in flutter is a **Widget**. 

## Static Methods and Variables

Observation-1:

```dart
class Area{
  double pi = 3.14;
}

void main(){
  print(Area.pi); // ----- (1) ERROR: pi is a instance variable not a static variable so this can't be accessed without creating object
}
```

Example-2

```dart
class Area{
  static double pi = 3.14;
}
void main(){
  print(Area.pi);  // Output: 3.14
}
```

Here are some conclusion about static keyword which we can learn:
1. The static keyword is used for memory management of global data members. The static keyword can be applied to the fields and methods of a class. The static variables and methods are part of the class instead of a specific instance. 
2. The static keyword is used for a class-level variable and method that is the same for every instance of a class, this means if a data member is static, it can be accessed without creating an object.
3. The static keyword allows data members to persist Values between different instances of a class.
4. There is no need to create a class object to access a static variable or call a static method: simply put the class name before the static variable or method name to use them.
5. The static variables belong to the class instead of a specific instance. A static variable is common to all instances of a class: this means only a single copy of the static variable is shared among all the instances of a class. The memory allocation for static variables happens only once in the class area at the time of class loading.

```dart
// Dart program in dart to
// illustrate static method
class StaticMem {
  static int num;
  static disp() {
    print("#GFG the value of num is ${StaticMem.num}") ;
  }
}
void main() {
StaticMem.num = 75;
	
// initialize the static variable }
StaticMem.disp();
	
// invoke the static method
}

```

[Video Resource](https://www.youtube.com/watch?v=gmEVGdswpO0)
