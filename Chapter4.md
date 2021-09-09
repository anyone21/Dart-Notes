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
 * AND operator  : When two conditions need to be true in order for the result to be true.
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

 
 
 
