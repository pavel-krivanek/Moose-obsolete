public - shapes
labeledIf: aBlock withBlock: aBlockLabel
	objects do: [ :object |
		(aBlock rtValue: object) ifTrue: [ self label: aBlockLabel withObject: object ] ]