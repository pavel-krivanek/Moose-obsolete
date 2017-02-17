token
assignmentToken
	^ self class allowUnderscoreAssignment
		ifTrue: [ (':=' asParser / '_' asParser) smalltalkToken ]
		ifFalse: [ ':=' asParser smalltalkToken ]