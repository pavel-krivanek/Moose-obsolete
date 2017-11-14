I am special ghost behaviour to process messages to objects which class was substituted by mutation.
My purpose is to process meta messages by original implementation of mutated objects instead of delegate it to current meta level (look at comments of GHGhostBehaviour).  Nevertheless I use metal level to detect that intercepted message is meta. Also I consider meta all messages defined by GHTNotNilGhost.
Some meta messages should be overriden with special mutation related logic. For example if #class message is considered as meta then it should return origial class of objects instead of mutation. Such overriden methods can be added to GHVictimMetaMessages in same way like other meta messages defined in GHMetaMessages subclasses. GHVictimMetaMessages methods are used as preferred implementation of meta messages. 
 
Domain messages are processed by my mutationBehavour with which I should be created: 
	GHVictimBehaviour forMutationWith: aGhostBehaviour
 
Internal Representation and Key Implementation Points.

    Instance Variables
	mutationBehaviour:		<GHGhostBehaviour>