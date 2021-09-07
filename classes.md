# classes and functions

## Technical Jargon
* Function
* Named functions
* Anonymous functions
* function signature
* function body
* method
* parameter
* argument
* named parameters
* pure functions
* closures
* scope
* Arrow functions

Function is like a machine in which produces something on certain input of values.

![image](https://user-images.githubusercontent.com/32765126/132250278-e20cb871-073e-4836-91b5-aea0392e742d.png)

Basic structure of a **function call** in dart

```Dart       
                       -------> Function signature
                      |
return_type functionName(parameterType parameterName){    ---
  return return_value;                                       | Function body
}                                                         ---
```
short summary of the labeled parts of the function:
* **Return type:**  This tell us immediately what the type will be of the function output. Return type can be **String, int, double, etc.** If function won't return anything then we can use **void** as return type.
* **Function name:** We should follow lowerCamelCase naming convention while naming a function.
* **Parameters:** These are the input to the function; they go inside the parantheses after the function name.
* **Return value:** This is the function's output, and it should match the return type.

Example: Function returning sum of two numbers?
```Dart
int sumTwo(int a,int b){  //funtion returns sum of two numbers
  return a+b;
}
void main(){
  const a = 21;
  const b = 32;
  final output = sumTwo(a,b);
  print(output);  //Output = 53
}
```

### Function parameters
Parameters are nothing but a name and type that we define as an input for our function. 
* Multiple parameters : We can use any number of parameters. If number of parameters are more than one, simply separate them with commas.
```dart
void funcOne(String var1);  // Function with single parameter
String funcTwo(int a,int b) // Function with multiple parameters
```

* Optional parameters : Consider following example
```dart
int sumTwo(int a,int b){
  return a+b;
}
void main(){
  final output = sumTwo(2);
  print(output);
}
```
We get following Output

![image](https://user-images.githubusercontent.com/32765126/132304758-5ddfbb3e-3901-4fc8-be9c-ba7a663cf742.png)

This shows that sumTwo() function is little rigid.If we don't have exactly right number of parameters, then compiler will give us Errors as shown above.
In above code we want to make **int b** optional. To indicate that a parameter is optional, we surround the parameter with square brackets and add a question mark after the type. Like so:
```dart
int sumTwo(int a, [int? b]){ 
  if(b != null){
    return a+b;
  }else{
    return a;
  }
}

// Note: If no value pass in for "b", the it will have the value of null, which means "no value".
```

* Default values : We can change the default value of any parameter in our function by using the assignment operator.
```Dart
int sumTwo(int a, [int b = 0]) {   // b as a default parameter value as 0
  return a + b;
}

void main() {
  final output1 = sumTwo(2);
  final output2 = sumTwo(2, 43);
  print(output1);  // 2
  print(output2);  // 45
}
```

* Named parameters : Dart allows us to use **named parameters** to make the meaning of the parameters more clear in function calls. For example:
```Dart
bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

void main() {
  withinTolerance(5) // true
  withinTolerance(15) // false
  withinTolerance(5, min: 7) // false
  withinTolerance(15, max: 20) // true
}
```

* Optional types :  READ form the book ---------------------XXXXXXXXXXXX_------------

# Anonymous functions:

All the functions which we have seen are named functions, which means, well, they have a name.

![image](https://user-images.githubusercontent.com/32765126/132331126-a01ce8d7-f43d-4c92-9eed-2c2d909ca58e.png)

There are specific spots where there's no reason to give that function a name. So we can omit return type and function name are as follows:

![image](https://user-images.githubusercontent.com/32765126/132331448-5adeee1c-5194-4edf-b413-3d2429f775b6.png)

In dart, functions are **first-class citizens.** That means we can treat them like any other type, assigning functions as values to variables and even passing functions around as parameters or returning them from other functions.


### Usecases of anonymous functions:

1. Assigning functions to variables: We can assign a function to a variable, functions behave just like other types:

```Dart
void main(){
  int number =4;
  String avr = 'Hello, world';
  Function multiply = (int a,int b) {     // anonymus function assigned to a variable multiply.
    return a*b;
  };
  
  // The type of multiply is Function
  
```

2. Passing functions to functions: We can pass anonymus functions as parameter to another functions. For example:

```dart
void namedFunction(Function anonymousFunction){
  //function body
}

// Here, namedFunction takes an anonymous function as a parameter
```

3. Returning functions from functions: returning them as output.
```dart
Function namedFunction(){
  return(){
    print('Hello');
  };
}

// The return value is an anonymus function of type Function.
// Functions that return functions, or that accept them as parameters, are called **higher order functions.**
```


Following example explaining the usecase of anonymus function.

```Dart
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

void main() {
  final triple = applyMultiplier(3);
  print(triple(4));   //Output = 12
}

```



