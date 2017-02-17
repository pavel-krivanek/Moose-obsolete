test first
testFirstOptional
	| p first result |
	p := 'a' asParser optional.
	
	result := (self first: p).
	
	self assert: result anySatisfy: [:e | e matches: '' ].
	self assert: result anySatisfy: [:e | e matches: 'a'].
