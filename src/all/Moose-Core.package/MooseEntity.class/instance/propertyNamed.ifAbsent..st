properties
propertyNamed: propertyName ifAbsent: aBlock
	"Return the value of the property named propertyName, evaluate aBlock if the property does not exist"

	| prop |
	prop := propertyName asSymbol.
	^ self privateState
		propertyAt: prop
		ifAbsent: [ | property |
			[ property := self mmGetProperty: (self mooseDescription attributeNamed: propertyName) ]
				on: Error
				do: [ :ex | property := nil ].
			property ifNil: [ aBlock value ] ]