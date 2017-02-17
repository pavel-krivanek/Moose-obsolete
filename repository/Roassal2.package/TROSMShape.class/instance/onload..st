accessing
onload: aBlock
	aBlock ifNil: [ onload := nil ].
	aBlock isBlock ifTrue: [ onload := aBlock ].