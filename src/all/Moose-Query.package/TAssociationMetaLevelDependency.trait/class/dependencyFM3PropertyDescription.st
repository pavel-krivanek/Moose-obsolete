accessing
dependencyFM3PropertyDescription
	"Return all the properties corresponding to the source or the target of the association"

	^ self allDeclaredProperties select: [ :e | e isSource or: [ e isTarget ] ]