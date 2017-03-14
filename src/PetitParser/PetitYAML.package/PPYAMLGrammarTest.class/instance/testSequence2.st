tests - complex
testSequence2
	| string |
	string :=
' - [ a, b ]
 - { a: b }
 - "a"
 - c
'.

	self parse: string rule: #l_block_sequence.
	self assert: result size = 4.