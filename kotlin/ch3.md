# Types and operations:
* **Pair or Triple** are types that represent data composed of two or three values of any type. If you want to have more than three values, you use what Kotlin calls a data
class.
```kotlin
fun main(){
  val coordinates:Pair<Int,Int> = Pair(2,3)
  val coordinatesInferred = Pair(2, 3)    // using type inference 
  val coordinatesWithTo = 2 to 3   // using to operator
  // accessing the values
  print(coordinates.first)
  print(coordinates.second)
  
```
### Challenge:
```kotlin
fun main(){
  //1
  val coordinate = Pair(2,3)
  print(coordinate)
  print(coordinate.first)
  print(coordinate.second)
 
  // 2
  val row = coordinate.first
  val column = coordinate.second
  // or
  val coordinate = Pair(2,3)
  val (row,column) = coordinate
  
  // 3
  
}
```
  
  
