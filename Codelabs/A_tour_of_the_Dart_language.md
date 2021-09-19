### Important concepts related to dart
1. Everything you can place in a variable is an object, and every object is an instance of a class. Even numbers, functions, and null are objects. 
With the exception of null (if you enable sound null safety), all objects inherit from the Object class.
2. Although Dart is strongly typed, type annotations are optional because Dart can infer types.
3. If you enable null safety, variables can’t contain null unless you say they can. You can make a variable nullable by putting a question mark (?) 
at the end of its type. For example, a variable of type int? might be an integer, or it might be null. If you know that an expression never evaluates 
to null but Dart disagrees, you can add ! to assert that it isn’t null (and to throw an exception if it is). An example: int x = nullableButNotNullInt!
4. When you want to explicitly say that any type is allowed, use the type Object? (if you’ve enabled null safety), Object, or — if you must defer type 
checking until runtime — the special type dynamic.
5. Dart supports generic types, like List<int> (a list of integers) or List<Object> (a list of objects of any type).
6. Dart supports top-level functions (such as main()), as well as functions tied to a class or object (static and instance methods, respectively). You 
can also create functions within functions (nested or local functions).
7. Similarly, Dart supports top-level variables, as well as variables tied to a class or object (static and instance variables). Instance variables are 
sometimes known as fields or properties.
8. Unlike Java, Dart doesn’t have the keywords public, protected, and private. If an identifier starts with an underscore (_), it’s private to its library.

  
### Lists
Perhaps the most common collection in nearly every programming language is the array, or ordered group of objects. In Dart, arrays are List objects, so most people 
just call them lists. Dart list literals look like JavaScript array literals. Here’s a simple Dart list:

  ```
  var list = [1, 2, 3];
  ```
You can add a comma after the last item in a Dart collection literal. This trailing comma doesn’t affect the collection, but it can help prevent copy-paste errors.
  ```
  var list = [
    'Car',
    'Boat',
    'Plane',
  ];
   ```
Lists use zero-based indexing, where 0 is the index of the first value and list.length - 1 is the index of the last value. You can get a list’s length and refer to 
list values just as you would in JavaScript: 

  ```
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
  ```
  
  For example, you can use the spread operator (...) to insert all the values of a list into another list:
  ```
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    assert(list2.length == 4);
  ```
  
  If the expression to the right of the spread operator might be null, you can avoid exceptions by using a null-aware spread operator (...?):
  ```
  var list;
var list2 = [0, ...?list];
assert(list2.length == 1);    
    
  ```
  
  ### Sets
  A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type.

Here is a simple Dart set, created using a set literal:
  ```
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
   ```
  
  To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set: 
  ```
  var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
        ```
  
  Add items to an existing set using the add() or addAll() methods:
  ```
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  
  // Use .length to get the number of items in the set:
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);
  
  //To create a set that’s a compile-time constant, add const before the set literal:
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.
  ```
  Sets support spread operators (... and ...?) and collection if and for, just like lists do. For more information, see the list spread operator and list collection
  operator discussions.
  
  ### Maps
  In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same+
  value multiple times. Dart support for maps is provided by map literals and the Map type.

  Here are a couple of simple Dart maps, created using map literals:
  ```
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
 ```
  
  You can create the same objects using a Map constructor:
  ```
  var gifts = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
        ```
  Add a new key-value pair to an existing map just as you would in JavaScript:
```
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds'; // Add a key-value pair
```
Retrieve a value from a map the same way you would in JavaScript:
```
var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');
```
If you look for a key that isn’t in a map, you get a null in return:
```
var gifts = {'first': 'partridge'};
assert(gifts['fifth'] == null);
```
Use .length to get the number of key-value pairs in the map:
```
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds';
assert(gifts.length == 2);
```
To create a map that’s a compile-time constant, add const before the map literal:
```
final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// constantMap[2] = 'Helium'; // This line will cause an error.
```

  
### Functions
Dart is a true object-oriented language, so even functions are objects and have a type, Function. This means that functions can be assigned to variables or passed 
as arguments to other functions. You can also call an instance of a Dart class as if it were a function.
