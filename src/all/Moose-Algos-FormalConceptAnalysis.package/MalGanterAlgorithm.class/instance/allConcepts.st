accessing
allConcepts
	
	| intent |
	^self findExtents
		collect:
			[:extent | 
			intent := self commonAttributesOf: extent.
			MalFormalConcept on: context extent: extent intent: intent]