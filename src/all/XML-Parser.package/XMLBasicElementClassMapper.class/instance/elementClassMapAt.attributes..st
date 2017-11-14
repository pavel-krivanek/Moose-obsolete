private
elementClassMapAt: aKey attributes: anAttributeDictionary
	| classOrCollection |

	classOrCollection :=
		elementClassMap
			at: aKey
			ifAbsent: [^ nil].

	classOrCollection isCollection
		ifTrue: [
			"to:do: for speed"
			1 to: classOrCollection size - 1 do: [:i |
				((classOrCollection at: i) key
					matchesAttributes: anAttributeDictionary)
					ifTrue: [^ (classOrCollection at: i) value]].
			^ classOrCollection last]
		ifFalse: [^ classOrCollection].