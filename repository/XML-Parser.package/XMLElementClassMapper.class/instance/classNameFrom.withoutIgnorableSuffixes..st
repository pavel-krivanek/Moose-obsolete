private
classNameFrom: aClass withoutIgnorableSuffixes: aSuffixCollection
	| className |

	className := aClass name asString.
	aSuffixCollection do: [:each |
		(className endsWith: each)
			ifTrue: [^ className allButLast: each size]].
	^ className.