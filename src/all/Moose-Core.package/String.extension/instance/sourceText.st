*moose-core
sourceText 
	"This is more of a hack to deal with the situation in which exporters populate sourceAnchor directly with 
	a path to a file rather than with a proper SourceAnchor object"
	self flag: 'possibly try to infer a file from the current string and get the source from there'.
	^ self 