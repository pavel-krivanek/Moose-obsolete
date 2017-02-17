as yet unclassified
openOn: aGroup withSelection: anotherGroup
	| browser |
	browser := self new browser.
	browser openOn: aGroup.
	(browser pane port: #classesToSelect) value: anotherGroup