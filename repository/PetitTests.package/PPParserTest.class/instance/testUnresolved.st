testing
testUnresolved
	| parser |
	parser := PPUnresolvedParser new.
	
	self assert: parser isUnresolved.
	self should: [ parser parse: '' ] raise: Error.
	self should: [ parser parse: 'a' ] raise: Error.
	self should: [ parser parse: 'ab' ] raise: Error.
	
	parser := nil asParser.
	self deny: parser isUnresolved