accessing-derived
clientClass
	"following code could be used alternatively in case clientInstance isNil, but it may return a superclass:
	self creator ifNotNil: [ self creator method belongsTo ]."
	
	^ self clientInstance ifNotNil: [ :object | object type ]