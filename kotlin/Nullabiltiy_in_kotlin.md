# Nullability in Kotlin

**Null reference exception** is one of the pitfalls in many programming languages which occur due to accessing a member of a **null reference**. This might sound somewhat 
gibberish to you. Let me simplify for you a little bit.

We have different types of “data-types” in Kotlin like **Int, String, Char, Pair, Triple, etc**. to represent some kind of values that exist. But in certain situations 
we have to “**represent the absence of a value**”.

**Null** is the name given to the absence of a value. In Kotlin a whole new set of types, **nullable types**, that handles the possibility a value could be null.

**Non-Nullable types** can be considered like a box: it either contains a value, or it doesn’t. When it doesn’t contain a value, it’s said to contain null. The box 
itself always exists; it’s always there for you to open and look inside.


<p  align="center">
  <img src="https://user-images.githubusercontent.com/32765126/147737695-03584fc6-1f8b-4ed4-b4b0-f7ab2bc21349.png" width="500" height="300">
</p>


### How to declare a nullable-variable?
```kotlin
fun main(){
  var ans: Int?  // ans is a “nullable Int”. This means it either contains null or an Int.
  var ans1 :Int  // ans1 is a non-nullable type.
}
```

In the above script, syntactically the main difference between a nullable and non-nullable type in Kotlin can be differentiated on the basis of “?” after any type.

### Erros while working with null

```kotlin
// script-1
fun main(){
  val a:Int = 32  //Non-nullable
  var b:Int? = 322 // Nullable

  a = b   //Error
  println(a)
  println(b)
}
/*
ERROR:
error: val cannot be reassigned
  a = b
  ^
error: type mismatch: inferred type is Int? but Int was expected
  a = b
      ^
exit status 1

*/
```
<br>

```kotlin
// script-2
fun main(){
  val a:String = "" //Non-nullable
  var b:String? = null // Nullable    ERROR

  println(a.length)
  println(b.length)
}

/*
ERROR:
error: only safe (?.) or non-null asserted (!!.) calls are allowed on a nullable receiver of type String?
  println(b.length)
           ^
exit status 1
*/
```
<br>

> In script-2 we can use "?." operator to safely call the Nullable-types.For example:


```kotlin
// script-3
fun main(){
  val a:String = "" //Non-nullable
  var b:String? = null // Nullable

  println(a.length)     // 0
  println(b?.length)    // null
}

// NOTE: If you work little bit in android then you see high usability of "?." nullable safe call operator.  
```
<br>

```kotlin
//script-4
fun main(){
  var result:Int? = 32
  println(result)
  println(result+1)   // ERROR
}
/*
ERROR:
error: operator call corresponds to a dot-qualified call 'result.plus(1)' which is not allowed on a nullable receiver 'result'.
  println(result+1)
                ^
*/                
```

<br>
<br>

As we have seen above Nullable objects are like boxe. And if it contain the value then it should be taken out of the box. In a situtation if we want that value and try to add with a non-nullable variable then what we have to do? We can deal with such kind of situtations using **Not-null assertion operators**. For example:

```kotlin
//script-5
fun main(){
  val firstName:String? = "Ujjwal" //Nullable
  val lastName:String? = " Bansal"  // Nullable

  val fullName:String = firstName!! + lastName!! // Not-null assertion operator

  println(fullName)
}
```
> Note: The double-exclamation mark after the variable name tells the compiler that you want to look inside the box and take out the value. The result is a value of the nonnull type.

<br>

In the above case our Nullable varaible store some value but what we get if our box is empty.
```kotlin
//script-6
 fun main(){
  val firstName:String? = "Ujjwal" //Nullable
  val lastName:String? = null  // Nullable   ERROR

  val fullName:String = firstName!! + lastName!! // Not-null assertion operator

  println(fullName)
}
/*
ERROR:
Exception in thread "main" kotlin.KotlinNullPointerException
*/
```
The null-pointer exception occurs because the variable contains no value when you try to use it. What’s worse is that you get this exception at runtime rather than
compile time — which means you’d only notice the exception if you happened to execute this code with some invalid input. Worse yet, if this code were inside an app,
the null-pointer exception would cause the app to crash!

<br>
As we seen in case of "**not-null assertion**" might cause a null-pointer excetion. Another way to deal with such exceptions we can use "**Smart casts**". Because they are much safer in case whenever nullable might be null. Not-null assertion is only appropriate when a nullable is guaranteed to contain a value.

```kotlin
//script-7
fun main(){
	var a:Int? = null
    var nonNullableData:Int = 8
    var nullableData:Int? = 66
    
    if(a!=null){
        nonNullableData = a
    }else{
        nullableData = a
    }
    
    println(nonNullableData)
    println(nullableData)
}
```

### Elvis operator

This is also an another way to get a value from a nullable. It is used to return the not null value even the conditional expression is null. It is also used to check the null safety of values. consider following scripts to get a clear view of this operator.

```kotlin
// script-8
// Part-1
fun main(args: Array<String>)
{  
  var firstName: String? = "Rohan" 
  var middleName: String? = null
  var lastName : String? = "Sodhi"
  
  var firstlen:  Int = if (firstName != null) firstName.length else -1 
  var middlelen:  Int = if (middleName != null) middleName.length else -1
  var lastlen:  Int = if (lastName != null) lastName.length else -1
   
  println("Length of firstName is ${firstlen}")  
  println("Length of middleName is ${middlelen}")
  println("Length of lastName is ${lastlen}")
}  

// Part-2 (using elvis operator)
fun main(args: Array<String>)
{  
  var firstName: String? = "Rohan" 
  var middleName: String? = null
  var lastName : String? = "Sodhi"
  
  var firstlen:  Int =  firstName ?.length ?: -1 
  var middlelen:  Int = middleName ?.length ?: -1
  var lastlen:  Int = lastName ?. length ?: -1
   
  println("Length of firstName is ${firstlen}")  
  println("Length of middleName is ${middlelen}")
  println("Length of lastName is ${lastlen}")
}  
```




