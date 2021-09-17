## Technical Jargon
* Classes
* Objects
* Methods
* Instance
* Object serialization
* Cascade notation
* Constructor
* this Keyword
* Private variables

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


## Constructors
Constructors are methods that create, or construct, instances of a class. That is to say, constructors build new objects. Constructors have the same name as the class, and the implicit return type of the constructor method is also the same type as the class itself. There are different type of constructors:

1. default constructor
2. Custom constructor
3. Long-form constructor
4. Short-form constructor
5. Named constructor
6. Forwarding constructor
7. Constant constructors
8. Factory constructors

### Default constructor
This constructor takes no parameters and just returns an instance of the class.
```dart
class Data{
  var value ='';
}

// Is equivalent to writing it like his
class Data{
  Data();   //constructor with no parameters
  var value ='';
}
```

### Custom constructor
This constructor take the parameter to modify the how our class builds an object. 

### Long-form constructor
In Dart the convention is to put the constructor before the property variables.
```Dart
class User{
  User(int id, String name){
    this.id = id;
    this.name = name;
  }
  
  int id =  0;
  String name = '';
}
```

> The keyword **this** in the constructor body allows us to diambiguate which variable we are talking about. It means this object. So this.name refers the object property called name, while name(without this) refers to the constructor parameter. Using the same name for the constructor parameters as the class properties is called **shadowing**. 


### Short-form constructor
Long form constructor can be written in short-form are as follows:
```dart
class User {
  User(this.id, this.name);
  
  int id = 0;
  String name = '';
}
```

### Named constructor
We can create by adding an identifier on to the class name. it takes the following pattern:
> className.identifierName()

```dart
User.anonymous() {
  id = 0;
  name = 'anonymous';
}

final anonymousUser = User.anonymous();
print(anonymousUser)
```

### Intitilizer lists
Take a look at the following way that an unscrupuous person could use this class:
```Dart
final vicki = User(id : 24, name: 'Ujjwal');
vicki.name = 'Hey I am a Hacker!!';
print(vicki);    // User(id: 24, name: Hey I am a Hacker)
```

> We want is once we have created the user object, we do'nt want anyone to mess with it.
There are multiple solution for this problem like one is discussed are as follows:

### Private variables
Dart allows you to make variables private by adding an underscore (_) in front of their name.

```dart 
User({int id = 0, String name = 'anonymous'})
  : _id = id,
  _name = name {
    print(' User name is $_name');
}
```

> Note: The member variables of a class are generally called fields. However, when the fields are public, that is, when they’re visible to the outside world, you can also call them properties. The Getters and Setters sections below will show you how to use public properties and private fields at the same time.

### Why aren’t the private properties private?
It turns out that your nefarious hacker can still access the “private” fields of User. Add the following two lines to main to see this in action:

```
final vicki = User(id: 24, name: 'Vicki');
vicki._name = 'Nefarious Hacker';
```

Using an underscore before a variable or method name makes it **library private,** not **class private.** For our purposes a library is simply a file, Since the main function and the User class are in the same file, nothing in User is hidden from main. To see private variables in action we will need to make another file so that we are not sing our class in the same file in which it is defined.


### checking for errors
Initializer lists are a great place to check for errors in the constructor parameters, which you can do by adding assert statements.

An assert statement takes a condition, and if the condition is false, terminates the app. This compiler completely ignores assert statments iin relase builds. 

```dart
user({int id = 0, String name = 'anonymous'})
  : assert(id >= 0),
  : assert(name.isNotEmpty),
  _id = id,
  _name = name;
```

### Constant constructors
We have learned how to keep epole from modifying the properties of a class by making them private. Another thing we can do is to make the properties immutable, that is, unchangeable. By using immutable properties, we don't even have to make them private. 

* Making properties immutable : There are two ways to make a variable immutable in dart: final and const. However, since the compiler won't know what the properties are until runtime, we only choice here is to use final.

```dart
final int _id;
final String _name;
```

Adding final means that _name and _id can only be given a value once, that is, when the constructor is called. After the object has been created, those properties will be immutable. You should keep the String and int type annotations, because removing them would cause the compiler to fall back to **dynamic**.


... to be continued

