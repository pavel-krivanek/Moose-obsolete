tests
testPrinting
	| aClass |
	
	aClass := RGClass named: 'Object'.
	
	self assert: aClass printString equals: #Object.
	