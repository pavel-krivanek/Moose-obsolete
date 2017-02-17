accessing
computeResult
	| viewRenderer unwantedReferences |
	viewRenderer := self model allClasses entityNamed: 'Smalltalk::MOViewRenderer'.
	unwantedReferences := viewRenderer incomingReferences
		select: [ :each | self allowedClassNamePatterns noneSatisfy: [ :allowedPattern | allowedPattern match: each from mooseName ] ].
	^ ((unwantedReferences collect: [:each | each from ]) sorted: [:a :b | a mooseName < b mooseName ]) asMooseGroup