navigation
withCommonSuperclasses
	| result |
	result := self asSet.
	self do: [:each | result addAll: each superclassHierarchy].
	^result