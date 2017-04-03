private
displayFor: anObject
	| entity pragmaValueAssociations |
	entity := anObject mooseInterestingEntity.
	pragmaValueAssociations := entity complexPropertyPragmas
		collect: [ :pragma | 
			pragma
				->
					(anObject mooseInterestingEntity perform: pragma methodSelector)
						mooseInterestingEntity ].

	pragmaValueAssociations addAll: (entity class slots select: [ :each | each isKindOf: FMRelationSlot ] 
		thenCollect: [ :aSlot | aSlot -> (anObject mooseInterestingEntity perform: aSlot name)	mooseInterestingEntity ]).
					

	^ (pragmaValueAssociations
		reject: [ :association | 
			association value isNil
				or:
					[ association value isCollection and: [ association value isEmpty ] ] ])
		sorted: [ :a :b | 
			(a key argumentAt: 1) asLowercase asString
				< (b key argumentAt: 1) asLowercase asString ]