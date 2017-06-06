tests - complex
testDocument2
	| string |
	string :='receipt:     Oz-Ware Purchase Invoice
date:        2012-08-06
customer:
    given:   Dorothy
    family:  Gale'.

	self parse: string rule: #start.
	self assert: result size = 3.
	self assert: ((result at: 'customer') at: #family) = 'Gale'