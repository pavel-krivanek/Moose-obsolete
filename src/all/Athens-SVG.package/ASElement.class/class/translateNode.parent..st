as yet unclassified
translateNode: xmlNode parent: aParent
	| nodeClass |
	nodeClass := ASVGNodeClasses fromName: xmlNode name.
	^ nodeClass new translate: xmlNode parent: aParent