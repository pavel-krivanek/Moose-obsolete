private - backend access
allClassVariables
	"Answer a collection of the receiver's classVariables, including those defined its superclasses"

	^ ((self owner superclass == nil) or: [ self owner superclass == self owner]) 
		ifTrue: [ self classVariables ]
		ifFalse: [ self owner superclass allClassVariables, classVariables ]