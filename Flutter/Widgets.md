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
