enumerating
do: aBlock 
	 
	^elements do: [:each | Tombstone ~~ each ifTrue: [aBlock value: each]]