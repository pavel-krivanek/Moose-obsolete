accessing
packagedElements
	"Specifies the packageable elements that are owned by this Package."
	^ packagedElements ifNil: [ packagedElements := OrderedCollection new ]