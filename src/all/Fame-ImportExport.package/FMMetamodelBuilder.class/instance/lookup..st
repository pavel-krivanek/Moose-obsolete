private
lookup: name

	"if it is a primitive type, return the name, metamodel will take care of this"
	FM3MetaDescription constantsDo: [ :prim | 
		prim name asString = name ifTrue: [ ^ name ] ].
	^ self lookupSerial: name
