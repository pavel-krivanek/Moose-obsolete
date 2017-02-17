construction
labelAttributes: aCollection
	|attribs|
	"self concept objects size =1 ifTrue: [self halt]."
	attribs := (self myAttribLabel asSet) intersection: (aCollection asSet).
	self descendants do: [:aDes | aDes addAncestorLabel: (attribs union:self anscentorLabel)  ].
	^attribs 