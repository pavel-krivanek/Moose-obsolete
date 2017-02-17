as yet unclassified
testSelectedAndNotSelected

	| checkboxPart |
	checkboxPart := CheckboxPart new.
	self assert: checkboxPart contents.
	checkboxPart contents: false.
	self deny: checkboxPart contents.