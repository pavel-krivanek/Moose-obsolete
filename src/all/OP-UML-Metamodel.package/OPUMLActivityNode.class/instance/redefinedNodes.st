accessing
redefinedNodes
	"ActivityNodes from a generalization of the Activity containining this ActivityNode that are redefined by this ActivityNode."
	^ redefinedNodes ifNil: [ redefinedNodes := OrderedCollection new ]