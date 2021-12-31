A valid value that represents a special condition, such as the absence of a value is known as a sentinel value.
There were a special type that could represent the absence of a value. It would then be explicit when a value exists and when one does'nt.

### Mini-Exercise:
```kotlin
fun main(){
  // 1
  var FavoriteSong:String?= null
  
  // 2 and 3
   var parsedInt = "10".toIntOrNull()
   println(parsedInt) 
   // parsedInt = "Data" // Error: Type mismatch: inferred type is String but Int? was expected
   parsedInt = 13
   println(parsedInt)  
   
 }
 ```
 
 ### Checking for Null:
 It’s all well and good that nullables exist, but you may be wondering how you can
look inside the box and manipulate the value it contains.



### Mini-Exercise:
```kotlin
//1
fun main() {
  val myFavoriteSong: String? = null
  if(myFavoriteSong!=null){
    println("My Favroite songs is: $myFavoriteSong!!.")
  }else{
    println("I don’t have a favorite song.")
  }
}

//2
fun main() {
  val myFavoriteSong: String? = null
  if(myFavoriteSong!=null){
    myFavriteSong = null
  }else{
    myFavriteSong = "The song"
  }
}
```

### Challenge
```kotlin
fun main(){
  // 1
  // valid statments
  var name: String? = "Ray"
  var middleName: String? = null
  
  //2
  
