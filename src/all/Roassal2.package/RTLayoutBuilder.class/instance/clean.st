public - layout
clean
	"Move non connected elements to a side
	
	Here is an example:
-=-=-=-=-=
b := RTMondrian new. 
b nodes: Collection allSubclasses.
b normalizer normalizeSize: #numberOfMethods.

b edges connectFrom: #superclass.
b layout 
	tree; 
	clean.
b
-=-=-=-=-=
	"
	self ifNotConnectedThen: RTGridLayout new.