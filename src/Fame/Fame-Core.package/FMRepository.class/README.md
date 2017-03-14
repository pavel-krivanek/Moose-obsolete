A FMRepository is a model: a group of instances of FM3Elements.
A FMMetaRepository is a group of FM3Elements. 

Note that FMRepository is not part of the FM3 model. It is more an implementation class. 

As an example when loading the Java class Point in mse format.

The repository contains an instance of the FAMIXClass representing the Java Point class. 
The metaRepository contains instances of FM3Element describing FAMIXClass. 
The metaMetaRepository contains instances describing the FM3Element class.


-----

A FMRepository knows its metaRepository instance of FM3MetaRepository

We can add, search, import export the model elements. 

We can get the description of an element using the method metaDescriptionOf:


To create a repository we can import it from a stream using importStream:.

You can also use a kind of DSL to describe your model. Have a look at document: senders. 


