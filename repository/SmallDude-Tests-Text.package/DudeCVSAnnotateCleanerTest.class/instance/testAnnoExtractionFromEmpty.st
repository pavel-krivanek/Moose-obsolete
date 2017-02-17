testing
testAnnoExtractionFromEmpty
	| cleaner code |
	code := OrderedCollection new.
	code add: ''.
	cleaner := DudeCVSAnnotateCleaner new.
	code := cleaner clean: code.
	self assert: (cleaner lineAnnotations at: 1) equals: ''.
	self assert: cleaner lineAnnotations size equals: 1