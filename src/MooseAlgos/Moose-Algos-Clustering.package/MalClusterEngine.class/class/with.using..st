instance creation
with: aCollection using: aDistanceBlock
	
	^self
		withDistanceMatrix:
			(MalDistanceSquare on: aCollection using: aDistanceBlock)