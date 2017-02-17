mapping
mapElement: anElement attributeSpec: anAttributeSpec toClass: aClass
	| classOrCollection |

	classOrCollection :=
		elementClassMap
			at: anElement
			ifAbsent: [nil].

	classOrCollection isCollection
		ifTrue: [
			"new mappings have precedence over old"
			classOrCollection addFirst: anAttributeSpec -> aClass]
		ifFalse: [
			elementClassMap
				at: anElement
				put:
					(OrderedCollection
						with: anAttributeSpec -> aClass
						with: classOrCollection)].