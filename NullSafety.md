# NULLABILITY in Dart - Introduction[Part-1]

### What is the meaning of null?
   Null plays a crucial role in programming languages. Null means "no value" or "absence of a value". Consider an example, a user store its Email-id in a String.
   ```dart
   String eMail = 'xyz@gmail.com';
   ```
   Suppose a user doesn't have an Email-id. Here our program requires some value, though, so what does a programmer give it? May be null or ''?
   ```dart
   String eMail = '';   // String intialized empty
   String eMail = null;  // String intialized as null
   ```
   Both the above initializations make sense. But when we run each line separately in our IDE we get the following results:
   
   * when a string is empty we get Nothing that means our code is working fine.
   
   ![image](https://user-images.githubusercontent.com/32765126/132163225-9334206e-b9d2-4067-be82-2ce2b591bdd4.png)
   
   
   * when string is null.
   
   ![image](https://user-images.githubusercontent.com/32765126/132163336-2fe64860-c067-4eb0-bea4-80b3a3e7004b.png)
   
   
   So, we get a conclusion that dart doesn't use null because developers tend to forget about null, they don't handle it in their code. Those nulls are like 
   little ticking bombs ready to explode the code. If we discard null string from our code then and continue using empty string then our problem gets solved 
   but wait? Isn't null useful?
   
### How dart tackle this problem of Null?
   Starting with version 2.12, Dart separated its types into nullable and non-nullable. Nullable types end with a question mark (?) while non-nullable types do not.
   More specifically, types of our code are non-nullable by default, meaning that values can't be null unless we say they can be.
   
   * **Nullable and Non-nullable types**

      * **Non-nullable types:**
         
         ```dart
         // Types are non-nullable by default i.e, they guaranteed to never contain the value null.
         // These types are easy to recognize because they don't have a question mark at the end 
         
         void main(List<String> args) {
           int firstVar = 323;
           double firstDouble = 2323.323;
           bool firstBool = true;
           String firstString = 'This is my String';
           
           int nullVar = null; //ERROR
         }
         ```
       * **Nullable types:**

         ```Dart
         //This types can contain the null value in addition to its own data type.
         
         void main(List<String> args) {
           int? nullInt = null;
           double? nullDouble = null;
           bool? nullBool = null;
           String? nullString = null;    // This means that nullString variable can either contain a String Or it can be null.
         }
         
         // Note: For any nullable variable in Dart, if you don’t initialize it with a value, it’ll be given the default value of null.
         ```
         
### Ending Note
This is a basic overview about null in dart. In next part we try to demystify how dart .
         
                                               
