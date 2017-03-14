FAMIXAccess represents an access to a variable by a behavioural entity (for example, a function or a method). 

For example if the method foo accesses the instance variable x, there is an access with the following information:
	(i) From: aFAMIXMethod (foo)
	(ii) To: aFAMIXAttribute (x)
	
aFAMIXMethod (foo) can be accessed using the message accessor (and from)
aFAMIXAttribute (x) can be accessed using the message variable (and to). 

Furthermore it can be tagged as read or write using isWrite: aBoolean.

For each access in the source code, there is one famix access created even if it is from the same behavioral entity towards the same variable.
	
