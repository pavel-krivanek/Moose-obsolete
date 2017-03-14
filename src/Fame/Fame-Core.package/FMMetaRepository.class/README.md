A FMMetaRepository is a repository containing descriptions of the classes used in a repository.

So an FM3Repository contains instances (ie instance of FamixClass or RPGHero)
and its associated FMMetaRepository contains instance of describing the classes of the 
FM3Repository elements.

Instance Variables
	classDict:		<Object>
	nameDict:		<Object>
	packageDict:		<Object>

classDict
	- Smalltalk class to its description

nameDict
	- Primitive object names to their description instance

packageDict
	- Package names to their description instance
