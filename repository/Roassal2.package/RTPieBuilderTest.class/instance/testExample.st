tests
testExample

	| b es |
	b := RTPieBuilder new.
	b interaction popup.
	b objects: (Array with: Dictionary with: Collection with: Set with: OrderedCollection ).
	es := b slice: #numberOfMethods.
	b normalizer distinctColor.	
	b labeled.
	b emphasize: Set by: 20.
	b emphasize: Dictionary by: 20.
	b build.
	
	self assert: es size equals: 4