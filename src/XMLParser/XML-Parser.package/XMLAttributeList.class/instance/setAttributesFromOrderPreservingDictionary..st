private
setAttributesFromOrderPreservingDictionary: anOrderPreservingDictionary
	"This should only be sent by DOM parsers/builders, not public API users"
	| orderedKeys |

	"Add the XMLAttributes in order directly to the collection to avoid
	sending notifications that would do unneeded, costly namespace prefix
	revalidation.
	Use the internal #orderedKeys with #to:do: to create an inlined #keysDo:
	without block closure overhead."
	orderedKeys := anOrderPreservingDictionary orderedKeys.
	1 to: anOrderPreservingDictionary size do: [:i | | key |
		key := orderedKeys at: i.
		collection addLast: 
			(self attributeClass new
				setName: key
				value:
					"use dictionary at:ifAbsent: for speed over at:"
					(anOrderPreservingDictionary
						at: key
						ifAbsent: nil)
				element: observer)].