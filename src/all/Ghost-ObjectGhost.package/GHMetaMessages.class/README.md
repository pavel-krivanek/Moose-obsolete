All methods of my subclasses define set of meta messages of ghost. They are  implemented with idea that actual receiver is ghost instance variable and not self. 
In that perpective I am a special helper class which should not be used outside GHMetaLevel. 

I provide little infrastructure for my subclasses:
- ghostClass 
return real class of ghost 

- printGhost 
returns string representation of ghost

- extractClassFrom: anObject 
it is class side method which uses mirror primitive to extract class of given object 

-includes: aSymbol 
it is class side method which check if given symbol belongs to meta message

- metaMessagesClass
it return my real class
 
My instances are created on ghost:
	GHMetaMessages for: aGhost
	
Internal Representation and Key Implementation Points.

    Instance Variables
	ghost:		<aGhost>