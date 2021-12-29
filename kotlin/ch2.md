# Expressions,Variables & Constants

### Few things about CPU
* At the heart of a computer is a Central Processing Unit (CPU).This is essentially a math machine. It performs addition, subtraction, and other arithmetical
operations on numbers.
* The CPU stores the numbers it acts upon in small memory units called **registers**.
* The CPU is able to read numbers into registers from the computer’s main memory, known as **Random Access Memory (RAM)**.

### MINI-Exercises:

```kotlin
fun main(){
    //1 
   	val myAge:Int = 24
    println(myAge)
    
    //2
    var averageAge:Double = 24.0
    averageAge = (averageAge+30)/2
    println(averageAge)
    
    //3
    val testNumber:Int = 45
    val evenOdd:Int = testNumber%2
    println(evenOdd)
    testNumber = 60  //Error : val cannot be assigned
    
    //4 
    var answer = 0
    answer += 1
    answer += 10
    answer *= 10
    answer = answer shr 3
    println(answer)
}
```

### Challenges
```kotlin
 //1
    val exercises = 9
    var exercisesSolved = 0
   	exercisesSolved+=1
    
    //2
    age = 16
    print(age)
    age = 30
    print(age)
    // No its does'nt compile
	  // var age:Int
    exercisesSolved+=1
	
    //3
    val a:Int = 46
    val b:Int = 10
    
    val answer1: Int = (a * 100) + b  // 4610
    val answer2: Int = (a * 100) + (b * 100)  // 5700
    val answer3: Int = (a * 100) + (b / 10) // 4601
    println(answer1)
    println(answer2)
    println(answer3)
    exercisesSolved+=1
    
    //4
	  var a = (5*3)- ((4/2)*2)
    exercisesSolved+=1
    
    // 5
    val a:Double = 4.015
    val b:Double = 8.526
    
    val average:Double = (a+b)/2
    print(average)
    exercisesSolved+=1
    
    // 6
    val fahrenheit: Double = 121.0
    val celcius: Double = (fahrenheit - 32) / 1.8
	  exercisesSolved += 1
    
    //7
    
    
    // 8
    val degrees: Double = 360.0
    val radians: Double = (degrees / 180) * PI
    exercisesSolved+=1
  
    // 9
    val x1:Double = 5.3
    val y1:Double = 5
    val x2:Double = 3.5
    val y2:Double = 8
    val dx: Double = x2 - x1
  	val dy: Double = y2 - y1	
    
    val distance:Double = sqrt(dx*dx + dy*dy)
    exercisesSolved+=1
}















