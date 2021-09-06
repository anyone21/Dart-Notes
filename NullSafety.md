# NULLABILITY - Should we need it or not?
### Technical jargons realated to null
* null
* sound null safety
* 
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
   
   
