tests - complex
testDocument
	| string |
	string :='receipt:     Oz-Ware Purchase Invoice'.

	self parse: string rule: #l_bare_document.
	self assert: result size = 1.
	self assert: (result at: 'receipt') = 'Oz-Ware Purchase Invoice'