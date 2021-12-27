### List
A **list** is an ordered collection of items. In Kotlin, lists can be either mutable (MutableList) or read-only (List).
* For creating a read-only lists use standard library functions listOf().
* For creating a mutable lists use standard library functions mutableListOf().
```kotlin
val systemUsers: MutableList<Int> = mutableListOf(1,2,3,5)
val sudoers: List<Int> = systemUsers

fun addSystemUser(newUser: Int) {                                 // 3
    systemUsers.add(newUser)                      
}

fun getSysSudoers(): List<Int> {                                  // 4
    return sudoers
}

fun main(){
  	addSystemUser(4)
    println("Tot sudoers: ${getSysSudoers().size}")
    getSysSudoers().forEach{
        y->  println("Some useful info on user $y")
    }
}
```

### Set
A **set** is an unordered collection that does not support duplicates.
* For creating a read-only sets use standard library functions setOf().
* For creating a mutable lists use standard library functions mutableSetOf().
```kotlin
val openIssues: MutableSet<String> = mutableSetOf("uniqueDescr1", "uniqueDescr2", "uniqueDescr3") // 1

fun addIssue(uniqueDesc: String): Boolean {                                                       
    return openIssues.add(uniqueDesc)                                                             // 2
}

fun getStatusLog(isAdded: Boolean): String {                                                       
    return if (isAdded) "registered correctly." else "marked as duplicate and rejected."          // 3
}

fun main() {
    val aNewIssue: String = "uniqueDescr4"
    val anIssueAlreadyIn: String = "uniqueDescr2" 

    println("Issue $aNewIssue ${getStatusLog(addIssue(aNewIssue))}")                              // 4
    println("Issue $anIssueAlreadyIn ${getStatusLog(addIssue(anIssueAlreadyIn))}")                // 5 
}
```


