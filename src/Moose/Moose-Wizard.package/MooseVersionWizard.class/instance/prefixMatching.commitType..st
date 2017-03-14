private
prefixMatching: sourceVersionNumber commitType: commitType
	"1.2.2 main -> 1.2.*
	 1.2.2.1 main -> 1.2.*
	 1.2.2 branch -> 1.2.2.*
	 1.2.2.1 branch -> 1.2.2.*
	"

	| index |
	commitType = #branchDev
		ifTrue: [ index := 3 ]
		ifFalse: [ index := 2 ].
	^ (sourceVersionNumber asMetacelloVersionNumber copyFrom: 1 to: index) printString, '.*'