## Technical Jargon
* Classes
* Objects
* Methods
* Constructor
* Instance
* 


We can create our own custom types using **classes.** Classes are like architectural blueprints that tell the system how to make an **object,** where an object is the actual data that’s stored in the computer’s memory. If a class is the blueprint, then you could say the object is like the house that the blueprint represents.

Dart doesn’t have primitive types. All values in Dart are objects that are built from a class. Classes are a core component of object-oriented programming.
They’re used to combine data and functions inside a single structure. 

![image](https://user-images.githubusercontent.com/32765126/133657740-fd5943fa-9226-4c84-8745-6c80eec14f92.png)


The functions exist to transform the data. Functions inside of a class are known as methods, while constructors are special methods you use to create objects from the
class.

## Defining a Class

```dart
class User{   // Step 1 -2
  int id =0;
  String name ='';
}

void main(){
  final user = User()  // Instantiating a class   Step -3 
  user.name = 'Mike';  // Step -4
  user.id =32;
  
```

1. A class **User** is created.
2. Two Properties; **id** is an int, **name** is a string with the default value of an empty string.
3. A **user** object or instance is created from class User.
4. Assigning new values to this objects properties by using **dot notation.**
5. 
