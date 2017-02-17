properties
hasTheSamePropertiesAs: aMooseEntity
	"Returns whether the receiver and the argument have the same properties (attributes and properties)."

	self allDeclaredProperties size = aMooseEntity allDeclaredProperties size 
		ifFalse: [^ false].
	(self allDeclaredProperties collect: [:each | each name]) = 
		(aMooseEntity allDeclaredProperties collect: [:each | each name])
		ifFalse: [^ false].
	self allDeclaredProperties do: [:each |
			(each getFrom: self) = (each getFrom: aMooseEntity)
				ifFalse: [^ false]
				].
	^ true