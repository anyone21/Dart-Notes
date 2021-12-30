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

### 
