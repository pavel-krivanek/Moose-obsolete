as yet unclassified
testSourceText
	| sourceText |
	sourceText := multipleFileAnchor sourceText.
	self assert: sourceText isNotEmpty.
	self assert: (sourceText includesSubstring: '=============', String cr)