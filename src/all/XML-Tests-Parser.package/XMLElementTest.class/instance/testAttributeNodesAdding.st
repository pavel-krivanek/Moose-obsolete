tests
testAttributeNodesAdding
	| element attributesAdded elementWithAttributes |

	element := self newElement.
	attributesAdded := element attributeNodes copyEmpty.
	elementWithAttributes := self newElementWithAttributes.

	"adding from another element should remove them from the previous element"
	elementWithAttributes attributeNodes copy do: [:each |
		attributesAdded addLast: each.
		element attributeNodes addLast: each.
		self
			assert: each element == element;
			assert: each parent == element;
			assert: element attributeNodes = attributesAdded;
			deny: (elementWithAttributes attributeNodes includes: each)].

	"adding already present nodes should move them in-place"
	element attributeNodes reversed do: [:each |
		attributesAdded
			remove: each;
			addLast: each.
		element attributeNodes addLast: each.
		self
			assert: each element == element;
			assert: each parent == element;
			assert: element attributeNodes = attributesAdded]