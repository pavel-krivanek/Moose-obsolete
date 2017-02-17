enumerating
intersection: aCollection
	| result |
	
	result := self class new.
	
	aCollection do: [ :each|
		((self includes: each) and: [(result includes: each) not])
				ifTrue: [ result add: each]].
		
	^ result