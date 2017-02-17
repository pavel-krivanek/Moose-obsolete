entity collection
entitiesDo: aBlock 
	 
	^self entityStorage do: aBlock	"self entityDictionary keysAndValuesDo: [ :key :group | 
		group do: aBlock 
	]."