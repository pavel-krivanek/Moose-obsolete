utilities
assert: aParser parse: aCollection to: aTargetObject end: anInteger
	| stream result context |

	self assert: aParser isPetitParser description: 'Parser invalid'.
	stream := aCollection asPetitStream.
	context := self context.
	
	result := aParser parse: stream withContext: context.
	aTargetObject isNil
		ifTrue: [ self deny: result isPetitFailure ]
		ifFalse: [ self assert: result equals: aTargetObject ].
	self assert: context position = anInteger description: 'Parser accepted at wrong position'.
	^ result