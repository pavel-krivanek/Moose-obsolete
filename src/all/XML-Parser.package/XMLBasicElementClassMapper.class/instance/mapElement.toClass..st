mapping
mapElement: anElement toClass: aClass
	| classOrCollection |

	classOrCollection :=
		elementClassMap
			at: anElement
			ifAbsent: [nil].

	classOrCollection isCollection
		ifTrue: [
			classOrCollection
				at: classOrCollection size
				put: aClass]
		ifFalse: [
			elementClassMap
				at: anElement
				put: aClass].