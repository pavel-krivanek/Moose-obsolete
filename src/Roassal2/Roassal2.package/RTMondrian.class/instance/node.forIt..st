public - nodes
node: anObject forIt: aBlock
	"Add a new node represengint an object to the view. The node is a container for other objects.
	
	For example:
	b := RTMondrian new.
	b node: 10 forIt: [ b nodes: (1 to: 5) ].
	b node: 20 forIt: [ b nodes: (1 to: 5) ].
	b open
	"
	^ (self nodes: (Array with: anObject) forEach: [ :each | aBlock value ]) first