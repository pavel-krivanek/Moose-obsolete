intercepting
cannotInterpret: aMessage 
	"This method intercepts all messages to objects which class was proxified by GHClassGhost.
	 IMPORTANT! In this case, 'self' is the instance whose class was proxified. Therefore, we cannot send ANY message to 'self' because we will cause an infinitive loop.
	We first have to find the ghost in the class hierarchy of receiver. And then we delegate message to it behaviour. Concrete GHClassGhost should define #instancesBehaviour which will perform processing of intercepted messages. (#ghostBehaviour is used to intercept direct messages to ghosts).	
	This logic extracted to class side method to be reused during simulation process when for example debugger step into is executed.
	"
	
	^GHInstanceMessagesInterceptor intercept: aMessage to: self