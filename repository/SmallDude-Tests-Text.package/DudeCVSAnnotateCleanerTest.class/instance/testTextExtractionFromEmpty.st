testing
testTextExtractionFromEmpty
	| cleaner code |
	code := OrderedCollection new.
	code add: ''.
	cleaner := DudeCVSAnnotateCleaner new.
	code := cleaner clean: code.
	self assert: (code at: 1) equals: ''.
	self assert: code size equals: 1