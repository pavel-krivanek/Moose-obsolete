as yet unclassified
translateNode: xmlNode
	| nodeClass |
	nodeClass := ASVGNodeClasses fromName: xmlNode name.
	^ nodeClass new translate: xmlNode