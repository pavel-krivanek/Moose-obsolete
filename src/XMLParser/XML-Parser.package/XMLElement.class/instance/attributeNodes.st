accessing
attributeNodes
	"Returns the attribute node list. Can be modified, but adding or removing
	attributes also adds or removes them from the element. Copy before
	modifying if you don't want that."

	^ attributes ifNil: [attributes := self attributeListClass observer: self]