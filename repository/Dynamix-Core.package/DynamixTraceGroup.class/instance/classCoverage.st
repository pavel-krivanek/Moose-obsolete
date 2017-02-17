coverage
classCoverage
	"Returns percentage coverage of all feature-trace classes in the current model"

	| aCurrentClassesSize aPercentage aModelClassesSize  |
	aModelClassesSize := (self mooseModel allClasses 
				select: [:aClass | (aClass isStub not ) and: [aClass isMetaclass not]] ) size.
	aCurrentClassesSize := self getAllClasses size.
	aPercentage := ((aCurrentClassesSize / aModelClassesSize) asFloat * 100) 
				rounded.
	^aPercentage.