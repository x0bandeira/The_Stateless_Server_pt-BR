






THE STATELESS SERVER
====================

1. Functional Programming
2. Node.js
3. The Stateless Server















FUNCTIONAL PROGRAMMING
======================

Observe software by the *functions it performs*
on *immutable* and *stateless* *data structures*.













FUNCTIONS IT PERFORMS
----------------------

# Object oriented:

*Actors* in *context* performing *actions*
that alter the context and its own state.

        ,---------------,            __
        |               '_____      ('') 
        |      ,,,      ,----/\    /(  )\
        |     ('-')     |   /__\    //\\
        |   o=(   )=o   |    ||
        |     // \\     |____||   __
        |               |-----'  ('') 
        '---------------'       /(  )\
                                 //\\









# Functional:

*Process* *inputs* to calculate *output*.
   
      
                       /////----       
             |\,      //////-----         |:\  
         ----'  \    +++++++------    ===='::\ 
         ----, ,/     ++++++/////     ====,::/ 
             |/        +++++////          |:/    
         
      




# Example:

Balance of a sale, considering
contract fees.

Balance is the sum of the cost 
and contract fees, minus any paid
amount.

:e [account.rb](https://github.com/rafaelbandeira3/The_Stateless_Server_pt-BR/blob/master/account.rb) [account_stateless.rb](https://github.com/rafaelbandeira3/The_Stateless_Server_pt-BR/blob/master/account_stateless.rb)





DATA STRUCTURES
---------------

Everything is data, including functions,
which can then be treated as input and output
to other functions.

*First class functions* designates functions 
that can be used as objects, just like numbers
and strings.

*Higher order functions* are functions that
return other functions. 

      
                    **********     /////----       %%%%%%%      
             |\,    ##########    //////-----    %%%%&&&%%%%       |:\  
         ----'  \   **********   +++++++------   %%%&&&&&%%%   ===='::\ 
         ----, ,/   ##########    ++++++/////    %%%%&&&%%%%   ====,::/ 
             |/     **********     +++++////       %%%%%%%         |:/    
      
      


# Example:

Price of flight tickets for different
customers.

:e [ticket_price.js](https://github.com/rafaelbandeira3/The_Stateless_Server_pt-BR/blob/master/ticket_price.js)









IMMUTABLE
---------

Once created, data cannot be modified.

Functions that only compute their inputs
without *side effects*--changing the input
or its context--are called *pure functions*. 

Pure functions are idempotent and guarantee
referential transparency.








# Example: 

Calculate available capacity for demanded
gas on pipelines that transport gas through
different states.

:e [scheduling_gas.cs](https://github.com/rafaelbandeira3/The_Stateless_Server_pt-BR/blob/master/scheduling_gas.cs)

















STATELESS
---------

Eliminates the concept of *behavior*. 
Or how data behaves based on its properties.

Allows for *lazy evaluation* and *optimizations*
by the compiler.





# Example:

JSON API with support for different environments.

:e [restful_server.coffee](https://github.com/rafaelbandeira3/The_Stateless_Server_pt-BR/blob/master/restful_server.coffee)











 




NODE.JS
=======

* Javascript environment built on top
  of Chrome's V8
* Asynch infra-structure with support for
  file system, IO... and HTTP
* REPL
* NPM - package manager done right
* Free PasS with Heroku, Nodester and more
* Javascript






# Example:

[Creating a node.js server from scratch.](https://github.com/rafaelbandeira3/The_Stateless_Server-nodejs-example/commits/master)














REFERENCES AND FURTHER READ
===========================

* Functional Programming with Java
http://www.defmacro.org/ramblings/fp.html

* Advantages of Stateless Programming
http://stackoverflow.com/questions/844536/advantages-of-stateless-programming

* Immutable Objects
http://www.javapractices.com/topic/TopicAction.do?Id=29

* Why we need immutable classes
http://stackoverflow.com/questions/3769607/why-do-we-need-immutable-class

* Programming with immutable data
http://msdn.microsoft.com/en-us/library/hh297115(v=vs.100).aspx

* Functional programming with immutable data structures
http://www.slideshare.net/adorepump/functional-programming-with-immutable-data-structures

* Idempotence
http://en.wikipedia.org/wiki/Idempotence

* Referential transparency
http://en.wikipedia.org/wiki/Referential_transparency_(computer_science)

* Connect for node.js
http://www.senchalabs.org/connect

* Node.js API
http://nodejs.org/api/all.html










GET IN TOUCH
============

* Rafael Bandeira
* @rafb3
* rafaelbandeira3@gmail.com
* http://github.com/rafaelbandeira3
* http://anythingsoftware.posterous.com



























