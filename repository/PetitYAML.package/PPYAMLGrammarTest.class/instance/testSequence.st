tests - complex
testSequence
	| string |
	context YAMLN: 1.
	string :=
' - { one : two , three: four , }
 - { five: six,seven : eight}'.

	self parse: string rule: #l_block_sequence.
	self assert: result size = 2.
	self assert: result first size = 2.
	self assert: result second size = 2.
	self assert: (result first at: 'three') = 'four'.