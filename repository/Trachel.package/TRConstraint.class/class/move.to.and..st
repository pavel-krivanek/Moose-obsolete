public - moving
move: els1 to: aSymbol and: els2
	aSymbol ifNil: [ ^ self ].
	self perform: ('move:', aSymbol,':') asSymbol withArguments: (Array with: els1 with: els2)