testing
testBlock
	| parser |
	parser := [ :s | s next ] asParser.
	
	self assert: parser parse: 'ab' to: $a end: 1.
	self assert: parser parse: 'b' to: $b.
	self assert: parser parse: '' to: nil