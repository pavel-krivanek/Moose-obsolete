I am mutation which infects real objects to intercept all their messages.
I replace class of victim object and use cannotInterpret:  trick  from my superclass GHClassGhost.

From the meta level point of view mutated objects should be like normal ones. For this I use original implementation of meta messages from mutated objects. So GHMetaMessages approach is only used to detect that particular message belongs to meta level but execution of meta messages is performed by mutated objects themselfs.
But some meta messages should be overriden (or new added) to see that object is mutated and to manage it specifically. For this purpose  all methods of GHVictimMetaMessages class are used as preferred implementation of meta messages.
All describing logic of meta level is implemented by GHVictimBehaviour which created with actual mutation behaviour to perform actual processing of intercepted domain messages. But meta messages are processed by victim behaviour with help of mutation current meta level.

Since I substitute class of mutated object I play role of original object class. I delegate all messages to victim class by classDelegator behaviour.

To infect object you can perform: 
	mutation mutate: anObject 
And to heal infected object: 
	mutation heal: mutatedObject
or just ask object 
	mutatedObject recoverFromGHMutation
To check that object infected use 
	object hasGHMutation 
You can ask object for it mutation 
	object ghMutation
(returns nil for not mutated objects).

To create my instances use 
	GHObjectMutation behaviour: aGhostBehaviour
	
Internal Representation and Key Implementation Points.

    Instance Variables
	classDelegator:		<GHDelegatorBehaviour>
	victimBehaviour:		<GHVictimBehaviour>