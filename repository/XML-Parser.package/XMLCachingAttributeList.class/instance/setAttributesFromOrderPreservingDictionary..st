private
setAttributesFromOrderPreservingDictionary: anOrderPreservingDictionary
	"This should only be sent by DOM parsers/builders, not public API users"
	| orderedKeys |

	"Hack to reuse its internal dictionary for speed, which we will
	modify the association values of. This is safe because the DOM
	parser/builder will never use it again."
	attributeNodesByName := anOrderPreservingDictionary dictionary.

	"Add the XMLAttributes in order directly to the collection to avoid
	sending notifications that would do unneeded, costly namespace prefix
	revalidation and also replace the value in the attributeNodesByName
	association with the new XMLAttribute.
	Use the internal #orderedKeys with #to:do: to create an inlined #keysDo:
	without block closure overhead."
	orderedKeys := anOrderPreservingDictionary orderedKeys.
	1 to: anOrderPreservingDictionary size do: [:i | | key association |
		key := orderedKeys at: i.
		"use associationAt:ifAbsent: for speed over associationAt:"
		association :=
			attributeNodesByName
				associationAt: key
				ifAbsent: nil.
		"replace its string value with the new XMLAttribute"
		association value:
			(collection addLast: 
				(self attributeClass new
					setName: key
					value: association value
					element: observer))].