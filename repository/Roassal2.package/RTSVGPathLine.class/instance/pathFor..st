accessing
pathFor: anEdge
	^ path ifNil: [ self linePathFor: anEdge ] ifNotNil: [ path rtValue: anEdge ]