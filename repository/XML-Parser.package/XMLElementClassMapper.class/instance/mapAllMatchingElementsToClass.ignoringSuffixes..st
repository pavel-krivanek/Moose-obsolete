mapping
mapAllMatchingElementsToClass: aClass ignoringSuffixes: aSuffixCollection
	| classNameWithoutSuffixes classNameSegments totalClassNameSegments |

	classNameWithoutSuffixes :=
		self
			classNameFrom: aClass
			withoutIgnorableSuffixes: aSuffixCollection.
	classNameSegments := self classNameSegmentsFrom: classNameWithoutSuffixes.
	(totalClassNameSegments := classNameSegments size) > 0
		ifFalse: [^ self].

	"remove the class prefix if any"
	totalClassNameSegments > 1
		ifTrue: [classNameSegments removeFirst].
	self
		mapElement:
			(self nameFromClassNameSegments: classNameSegments)
		toClass: aClass.
	self
		mapElement:
			(self camelCasedNameFromClassNameSegments: classNameSegments)
		toClass: aClass.
	self
		mapElement:
			(self hyphenatedNameFromClassNameSegments: classNameSegments)
		toClass: aClass.
	self
		mapElement:
			(self underscoredNameFromClassNameSegments: classNameSegments)
		toClass: aClass.