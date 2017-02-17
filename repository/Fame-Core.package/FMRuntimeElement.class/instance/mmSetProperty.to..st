accessing
mmSetProperty: aFM3Property to: value

	aFM3Property hasOpposite ifTrue: [ |opposite| "handle opposite setter here"
		opposite := aFM3Property opposite.
		opposite isMultivalued
		ifTrue: [  "opposite attribute is a collection, should add self to it"
			aFM3Property isMultivalued " there are many opposite values to update "
			ifTrue: [ value do: [ :v |
						(v at: opposite name ifAbsentPut: OrderedCollection new) add: self ]]
			ifFalse: [ (value at: opposite name ifAbsentPut: OrderedCollection new) add: self ]]
		ifFalse: [ "opposite attribute accept a single value"
			aFM3Property isMultivalued " there are many opposite values to update "
			ifTrue: [ value do: [ :v |
						v at: opposite name put: self ]]
			ifFalse: [ value at: opposite name put: self ]]			
		].
	^ self at: aFM3Property name put: value