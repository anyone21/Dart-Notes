### OBJECTS AND COMPANION OBJECTS IN KOTLIN

Use case of companion object
1. If you needed a property at class level and not a specific instance.
2. member variables: each object has its own copy
3. class variables: one variable shared among all objects(companion object)
4. There is not static variable in Kotlin so we achieve this same effect in kotlin using this.(Shown in CODE2)
5. Factory pattern: perform extra work before an object can be used. Due to which we can do any type of validation or post processing we need to rather than relying on the client to call method in ccretain application.


CODE1
```kotlin
fun main(){
    println(Bank.TAG)
}
class Bank(private val name:String){
    companion object{
        const val TAG= "THIS IS MY BANK"
    }
}
```

CODE2
```kotlin
fun main(){
    repeat(4){
        println(Bank("Ujjwal"))
    }
}
class Bank(private val name:String){
    companion object{
        const val TAG= "THIS IS MY BANK"
        private var nextId = 1
    }
    private val accountId:Int
    init{
        accountId = nextId++
    }
    override fun toString():String{
        return "$TAG id $accountId with name $name"
    }
}
```

CODE3
```kotlin
fun main(){
    repeat(4){
        println(Bank.create("Ujjwal"))
    }
}
class Bank private constructor(private val name:String){
    companion object{
        const val TAG= "THIS IS MY BANK"
        private var nextId = 1
        fun create(name:String):Bank?{
            val instance = Bank(name)
            return if(instance.validate()) instance else null 
        }
    }
    private val accountId:Int
    init{
        accountId = nextId++
    }
    fun validate():Boolean{
        // checking their ID
        return true
    }
    override fun toString():String{
        return "$TAG id $accountId with name $name"
    }
}
```
[link](https://www.youtube.com/watch?v=Dt8zTBdDv5w)


