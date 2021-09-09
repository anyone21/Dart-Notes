## Technical Jargon
* control flow
* boolena values
* boolean operator


## Boolean values:
 Boolean are used to compare values. Either they are **true** or **false.** It is a data type represented as bool in Dart. 
 ```dart
 void main(){
  bool myBool = true;
  
  const numberEqual = (1==2);
  const numberNotEqual = (1!=2);
  print(numberEqual); //false
  print(numberNotEqual); //true
 }
 ```
 
 
 ## Boolean logic
 * AND operator : When two conditions need to be true in order for the result to be true.
 ```dart
 void main(){
  const varOne = true;
  const varTwo = false;
  print(varOne && varTwo); // false;
```

|   A  |  B  |  A && B  |
|------|-----|----------|
| true| false | false |
| true| true | true |
| false| false | false |
| false| true | false |

* OR operator : If only one of two conditions need to be true in order for the result to be true, this is an example of a Boolean OR operation.
```dart
void main(){
 const varOne = true;
 const varTwo = false;
 print(varOne || varTwo); //true
}
```

|   A  |  B  |  A \|\| B  |
|------|-----|----------|
| true| false | true |
| true| true | true |
| false| false | false |
| false| true | true |


* Operator precedence: Operators higher in the following list are executed before operators lower in the following list.

| ! |
|----|
| >= > <= < |
| == != |
| && |
| \|\| |

 
 
