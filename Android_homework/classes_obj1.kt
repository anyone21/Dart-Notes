// TASK: Classes and object instances in Kotlin 
// main function
fun main(){
    val myFirstDice = Dice(6,"red")
    println("Your ${myFirstDice.numSides} sided dice rolled ${myFirstDice.roll()} having color ${myFirstDice.color}!")
    
    val mySecondDice = Dice(20,"Yellow")
    println("Your ${mySecondDice.numSides} sided dice rolled ${mySecondDice.roll()} having color ${mySecondDice.color}!")
    
    val tossCoin = Coin()
    print("On tossing the coin we get ${tossCoin.flip()}!")
}
// Coin class
class Coin{
    fun flip():String{
        return arrayOf("Heads","Tails").random()
    }
}
// Dice class
class Dice (val numSides: Int,val color: String) {

    fun roll(): Int {
        return (1..numSides).random()
    }
}
