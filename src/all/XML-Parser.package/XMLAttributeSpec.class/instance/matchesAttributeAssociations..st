matching
matchesAttributeAssociations: anAssociationCollection
	anAssociationCollection isDictionary
		ifTrue: [
			^ self matchesAttributes: anAssociationCollection]
		ifFalse: [| dictionary |
			"can't use Dictionary newFrom: because of GS portability, and
			withAll: won't work either because it uses addAll: which sends
			keysAndValuesDo: to its arg instead of associationsDo: with add:,
			so when anAssociationCollection is an array, the keys end up being
			array indexes mapped to associations"
			dictionary := Dictionary new: anAssociationCollection size.
			anAssociationCollection associationsDo: [:each |
				dictionary add: each].
			^ self matchesAttributes: dictionary]