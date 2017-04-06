cleaning
cleanMergedClass

	slots do: [ :each |
		mergedClass slotNamed: each ifFound: [ :aSlot |
			mergedClass removeSlot: aSlot ] ].

	mergedClass protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | mergedClass removeProtocol: each ].
		
	mergedClass class protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | mergedClass class removeProtocol: each ].