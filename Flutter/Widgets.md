In Flutter all the UI components are known as widgets. The widget which contains the code for a single screen of the app can be just of two types —
1. Stateful : They cannot change their state during the runtime of the app, which means the widgets cannot be redrawn while the app is in action. 
```dart
import 'package: flutter/material.dart';
class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return container(
     
    );
  }
}

// Name of this Stateless widget is "StartScreen"
// We are overriding the build method.
// build method takes in a "BuildContext" as the parameter and returns a widget.
// In Stateless widget, The “build” method can be called only ONCE while the app 
is in action, which is responsible for drawing the widgets on to the device screen.

```

> My conclusion: Since this is the sarting point of our application which we want to call once so that is why we make it Stateless.

2. Stateless : 

Widget is an immutable description of part of a user inteface. Widgets can be inflated into elements, which manage the undelying render tree.



[Resource Geeks for Geeks](https://www.geeksforgeeks.org/difference-between-stateless-and-stateful-widget-in-flutter/)
[Youtube video](https://www.youtube.com/watch?v=ClrQzPlhxrA)



Three major components to this:
1. State
2. Stateless
3. Stateful


1. What is State?
* Something in a widget that can change.
* can cause a rebuild.

2. Stateless widget
* has no changing state.

3. Stateful widget
* have a changable state.


In the below code an application is developed which explain stateless and stateful widgets.
```dart
// main.dart

import "package:flutter/material.dart";
import "package:startup_namer/screens/home.dart";
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
```

```dart
// screens/home.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {   // stateless widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Vs stateful"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FirstColumn(),   //stateless widget
          SecondColumn(),   // stateful widget  this is because its state is changing
        ],
      ),
    );
  }
}


class FirstColumn extends StatelessWidget {   // stateless widget
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Like This: ")
      ],
    );
  }
}

class SecondColumn extends StatefulWidget {     // stateful widget
  @override
  _SecondColumnState createState() => _SecondColumnState();
}

class _SecondColumnState extends State<SecondColumn> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(liked? Icons.star:Icons.star_border),
          onPressed: (){
            setState(() {
              liked=!liked;
            });
          },
        )
      ],
    );
  }
}
```




[Link to the above resource](https://www.youtube.com/watch?v=ClrQzPlhxrA)
