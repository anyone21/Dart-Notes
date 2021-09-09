## Technical Jargon
* control flow
* boolena values
* boolean operator
* scope
* if -else loop
* switch statement
* enum
* while loop
* do-while loop
* for-loop
* break, continue keyword
* For-each loop


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

 
## Scope
Scope is the extent to which a variable can be seen throughout your code. Dart uses curly braces as the boundary markers in determining a variable's scope.For example:
```dart
const global = 'Hello, world';
void main() {
 const local = 'Hello, main';
 if (2 > 1) {
  const insideIf = 'Hello, anybody?';
  print(global);
  print(local);
  print(insideIf);
 }
 print(global);
 print(local);
 print(insideIf); // Not allowed!
}


// global variable is deined outside main, which means it has a global scope. That is, it's visible everywhere in the file.
// local variable is defined inside main, which means it can be accessible form everywhere inside main function.
// insideIf variable is defined inside the body of if statement, which means it can't be access outside this if statement.
```

## Loops
* if-else loop
```dart
void main(){
 if(condition is true){
  //body
 }else {
  body
 }
```

* while-loop
```dart
 void main(){
  while(condition){
    // lopp code
  }
```
* do-while loop
```dart
void main(){
 do{
   //loop code
 }while(condition)
```

* for loop
```dart
void main(){
 for(initalization, condition, action){
     // Loop body
 }
```

* For-each loop
```dart
void main(){
   const data = [1,2,3,45];
   data.forEach((d) => print(d));
   // 1 2 3 45
}
```



