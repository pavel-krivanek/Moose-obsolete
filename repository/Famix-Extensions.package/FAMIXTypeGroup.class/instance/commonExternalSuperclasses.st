navigation
commonExternalSuperclasses
	| result |
	result := Set new.
	self do: [:each | 
			result addAll: (each superclassHierarchy reject: [:eachClass | self includes: eachClass])].
	^result