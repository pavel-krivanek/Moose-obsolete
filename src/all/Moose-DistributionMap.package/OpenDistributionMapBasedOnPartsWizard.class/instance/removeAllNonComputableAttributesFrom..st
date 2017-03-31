computing possible elements
removeAllNonComputableAttributesFrom: aCollectionOfFM3Attributes


	| result |
	result := OrderedCollection new.
	"aCollectionOfFM3Attributes do: [:aFM3Attribute |
		|concernedClass|
		concernedClass := self mooseModel classConcernedByProperty: aFM3Attribute name asSymbol appliedTo: self groupClass.
		concernedClass ifNotNil: ["
			"if no elements of this type is present in the mooseModel, we will not be able to compute possible properties"
	"		(self mooseModel includesElementsOfType: self groupClass)
				ifTrue: [result add: aFM3Attribute] .
			]
		]."
	aCollectionOfFM3Attributes do: [:aFM3Attribute |
		[
		(self mooseGroup flatCollect: [:anEntity | anEntity perform: aFM3Attribute implementingSelector]) isEmpty
			ifFalse: [
				"we make sure that the property does not return an empty collection for each element of the group"
				result add: aFM3Attribute 
				].
			] on: Error do: [:error |
				"if it raises un error, we don't add to the result"
			]
		].
	^ result.
	