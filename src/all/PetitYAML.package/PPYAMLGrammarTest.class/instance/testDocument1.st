tests - complex
testDocument1
	| string |
	string :='receipt:     Oz-Ware Purchase Invoice
date:        2012-08-06
customer:
    given:   Dorothy
    family:  Gale

items:
    - part_no:   A4786
      descrip:   Water Bucket (Filled)
      price:     1.47
      quantity:  4

    - part_no:   E1628
      descrip:   High Heeled "Ruby" Slippers
      size:      8
      price:     100.27
      quantity:  1
'.

	self parse: (string allButFirst:4) rule: #l_bare_document.
	self assert: result size = 4.
	self assert: ((result at: 'items') second at: 'price') = '100.27'.
	self assert: ((result at: 'items') first at: 'part_no') = 'A4786'
	