accessing
computeResult
	| uncommentedClasses |
	uncommentedClasses := self interestingClasses select: [:each | each comments isEmpty ]. 
	^ uncommentedClasses sorted: [:a :b | a name < b name ]