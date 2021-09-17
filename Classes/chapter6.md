## Technical Jargon
* Classes
* Objects
* Methods
* Constructor
* Instance
* Object serialization
* Cascade notation

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
  
  String toJson(){
    return '{"id":$id, "name":"$name"}';
  }
  
  @override
  String toString(){
    return 'User(id: $id, name: $name)';
  }
}

void main(){
  final user = User()  // Instantiating a class   Step -3 
  user.name = 'Mike';  // Step -4
  user.id =32;
  print(user)  //Output : Instance of 'User'   // Step-5
```

1. A class **User** is created.
2. Two Properties; **id** is an int, **name** is a string with the default value of an empty string.
3. A **user** object or instance is created from class User.
4. Assigning new values to this objects properties by using **dot notation.**
5. While printing user object we are expecting user id and user name but we are getting something the reason is that all classes in dart are derived form object, which has a **toString** method. In this case, our object doesn't tell Dart how to write its internal data when we call toString on it, So dart give its generic output. But we can alos overrise the Object class's version of toString by writing our own implementation of toString, and thus cutomize how our own object will print out.


## Understanding Object serialization
When we want to pass our data around as a unit within our application. one disadvantage, through shows u when we are saving the object or sending it over the network. Files, databases and networks only know how to handle simple data types such as numbers or strings. They don't know how to handle anythign more complex. like our **User** data type.

**Serialization** is the process of converting a complex data object into a string.Serialized objects are easy to tranfered across the network. Later on **desearialization**, which is simple converting a string back into an object of our data type.

## cascade notation(..)
When we created our User object, we set its parameters like this:
```dart
  final user = User();
  user.name = 'Ujjwal';
  user.id = 322;
}
```
There is a cascade operator(..) that allows us to chain together multiple assignments on the same object without having to repaet the object name. The following code is equivalent:
```dart
final user = User()
..name = 'Ujjwal'
..id = 21;

// Semicolon only appears on the last line
```



