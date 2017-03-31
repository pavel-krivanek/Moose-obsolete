as yet unclassified
doLayoutIfNecessary
	"Perform a layout on the children elements if necessary."
	layoutBuilder ifNil: [ ^ self ].
	layoutBuilder setUpElements: children