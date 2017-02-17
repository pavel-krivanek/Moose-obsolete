tests
testParentAnnotationType
	| type attribute |
	type := FAMIXAnnotationType new.
	attribute := FAMIXAnnotationTypeAttribute new.
	attribute parentAnnotationType: type.
	self assert: type attributes size equals: 1