as yet unclassified
endDocument
	"This method overrides the default FMImporter to allow for dangling references"
	
	self assert: [ stack isEmpty ].
	stack := nil.
	model addAll: elements.