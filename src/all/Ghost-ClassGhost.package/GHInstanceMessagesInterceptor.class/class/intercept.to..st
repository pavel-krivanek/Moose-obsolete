simulation trick
intercept: message to: receiver
	"This method intercepts all messages to objects (receiver) which class was proxified by GHClassGhost.
	 IMPORTANT! In this case, 'receiver' is the instance whose class was proxified. Therefore, we cannot send ANY message to 'receiver' because we will cause an infinitive loop.
	We first have to find the ghost in the class hierarchy of receiver. And then we delegate message to it behaviour. Concrete GHClassGhost should define #instancesBehaviour which will perform processing of intercepted messages. (#ghostBehaviour is used to intercept direct messages to ghosts).	
	Originaly instance side method #cannotInterpret: intercepts message to receiver du to special VM trick. Look at class comment"
	| thisClass ghost |
	thisClass := GHMetaMessages extractClassOf: receiver.
	
	ghost := thisClass findGhostInHierarchy.
	
	^ ghost instancesBehaviour intercept: message to: receiver