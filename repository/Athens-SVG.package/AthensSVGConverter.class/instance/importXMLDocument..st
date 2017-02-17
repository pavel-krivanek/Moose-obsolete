as yet unclassified
importXMLDocument: doc

	| root |
	root := doc nodes elements.
	
	((root size > 1) or: [ root first name ~= 'svg'])  ifTrue: [ self error: 'A root svg element expected' ].

	^ ASVGRoot new translate: root first.
