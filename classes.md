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
