examples
classHierarchy: classes
	
	| fca |
	fca := MalFormalContext new.
	fca
		with: classes
		using: #yourself
		using: [:each | each allSelectors "\"difference: Object allSelectors].
	^fca