utilities
assert: aCollection includes: aString epsilon: aBoolean
	| parsers checker stream |
	parsers := aCollection
		collect: [ :each | each end ].
	checker := [ :string |
		parsers anySatisfy: [ :parser |
			(parser parse: string asPetitStream)
				isPetitFailure not ] ].
	stream := WriteStream on: String new.
	32 to: 127 do: [ :index |
		(checker value: (String with: (Character value: index)))
			ifTrue: [ stream nextPut: (Character value: index) ] ].
	self
		assert: stream contents = aString
		description: 'Expected ' , aString printString , ', but got ' , stream contents printString.
	self
		assert: (checker value: '') = aBoolean
		description: 'Expected epsilon to ' , (aBoolean ifTrue: [ 'be' ] ifFalse: [ 'not be' ]) , '  included'