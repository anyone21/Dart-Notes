## Summary of Module-2
* How a Flutter App Starts and Works.
* Working with Widgets & Building Custom Widgets.
* Reacting to User Events
* Stateless and Stateful widgets
* Dart Fundamentals

## Data types:
* A program works with different types of data
	* Text 
	* Numbers 
		* Floats
		* Integers


Dart is a statically typed, object-oriented programming language developed by Google which can be used to build web and mobile application.

| Statically typed | Object-oriented | Mobile application |
|------------------|-----------------|--------------------|
| We define which(types) of data a variable or function uses | Everything's an object We defien classes as blueprint for our own objects | Flutter uses dart as a programming langauge to build native mobile apps |

```dart
// Statically typed
String myName;
myName = 'Ujjwal';

myname = 5; // Fials
```

```dart
// Object-oriented
Class Person{
  String name = 'Max';
}

Person p = Person();
print(p.name) //'Max'
```



> Function inside a class are called methods and variable inside a class are called properties.


1. [Decorator in dart](https://dart.academy/structural-design-patterns-for-dart-and-flutter-decorator/)


### Different type of Widgets
1. Output & Input(Visible) Eg. RaisedButton, Text(), Card(),... Drawn onto the screen : "What the user sees".
2. Layout and Control ( Invisible) Eg. Row(), Column(), ListView()...  Give our app structure and control how visible widgets are drawn onto the screen (indeirectly visible)
3. Container() widget : This type of widget belong to both Visibe and Invisible type of widgets.

![image](https://user-images.githubusercontent.com/32765126/137576162-d3241578-a5c8-4f0c-89ae-9897f35a8bd5.png)

### Understanding "State" 



