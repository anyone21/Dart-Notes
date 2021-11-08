### Lesson -1
* What are user interface elements, such as **Views** and **ViewGroups**.
* How to display text in a **TextView** in an app.
* How to set attributes, such as text, font, and margin on a **TextView**.

Text, images, buttons, and many other types of elements. These **elements** are called **View**. Everything appears on the screen of our application is called a **View**.
To organize **Views**, we put them in a container. A **ViewGroup** is a container that **View** objects can sit in, and is responsible for arranging the **views** inside it.
One kind of **ViewGroup** is a **Constraintlayout**, which helps you arrange the **Views** inside it in a flexible way.

![image](https://user-images.githubusercontent.com/32765126/139840923-62f5bd91-86be-49d1-864f-db3e7c68a06e.png)

* Layout Editor: Its a tools which helps us to make UI by arranging **Views** and **ViewGroups**.


### Lesson -2
* Introduction to Activities
* Activity is basically a screen like Login in screen, Signup screen etc. An appication can have multiple activities.
* The top-level or first activity is often called the MainActivity and is provided by the project template.
* Using **When** statement in Kotlin


### Lesson -3 (Layouts)
creating an abstract class : An **abstract** class is a class that cannot be instantiated because it is not fully implemented. It can be think of as a sketch. A sketch incorporates the ideas and plans for something, but not usually enough information to build it. You use a sketch (abstract class) to create a blueprint (class) from which you build the actual object instance.

```kotlin
abstract class Dwelling(private var residents: Int){  // private a visibility modifier,
    // residents property is only visible to (and can be used inside) this class.
    
    abstract val buildingMaterial: String //using val to make it immutable
    abstract val capacity: Int
    
    fun hasRoom():Boolean{
        return residents < capacity
    }
}
class SquareCabin(residents: Int) : Dwelling(residents) {
    override val buildingMaterial = "Wood"
    override val capacity = 6
}

fun main(){
    val squareCabin = SquareCabin(6)

    println("\nSquare Cabin\n============")
    println("Capacity: ${squareCabin.capacity}")
    println("Material: ${squareCabin.buildingMaterial}")
    println("Has room? ${squareCabin.hasRoom()}") 
}
```

Use with to simplify your code

In the println() statements, every time you reference a property or function of squareCabin, notice how you have to repeat squareCabin. This becomes repetitive and can be a source of errors when you copy and paste print statements.

When you are working with a specific instance of a class and need to access multiple properties and functions of that instance, you can say "do all the following operations with this instance object" using a with statement. Start with the keyword with, followed by the instance name in parentheses, followed by curly braces which contain the operations you want to perform.

```kotlin
abstract class Dwelling(private var residents: Int){  // private a visibility modifier,
    // residents property is only visible to (and can be used inside) this class.
    
    abstract val buildingMaterial: String //using val to make it immutable
    abstract val capacity: Int
    
    fun hasRoom():Boolean{
        return residents < capacity
    }
}
class SquareCabin(residents: Int) : Dwelling(residents) {
    override val buildingMaterial = "Wood"
    override val capacity = 6
}

fun main(){
    val squareCabin = SquareCabin(6)

    with(squareCabin) {
        println("\nSquare Cabin\n============")
        println("Capacity: ${capacity}")
        println("Material: ${buildingMaterial}")
        println("Has room? ${hasRoom()}")
    }
   
   
}
```

