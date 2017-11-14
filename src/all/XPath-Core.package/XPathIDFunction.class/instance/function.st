implementing
function
	| object ids nodeSet |

	object := self firstArgument.
	ids := Set new.
	object isXPathNodeSet
		ifTrue: [
			object do: [:each |
				self
					splitSpaceSeparatedIDs: each stringValue
					into: ids]]
		ifFalse: [
			self
				splitSpaceSeparatedIDs: object asXPathString
				into: ids].

	nodeSet := self newNodeSet.
	(ids notEmpty
		and: [self contextNode notNil])
		ifTrue: [| root doctypeDefinition |
			((root := self contextNode documentRoot) isDocument
				and: [(doctypeDefinition := root doctypeDefinition) notNil
					and: [doctypeDefinition hasAttributeValidators]])
				ifTrue: [
					self
						addElementsWithUndeclaredOrDeclaredIDs: ids
						in: root
						to: nodeSet
						declaredWith: doctypeDefinition]
				ifFalse: [
					self
						addElementsWithUndeclaredIDs: ids
						in: root
						to: nodeSet]].

	"the elements matching the IDs are enumerated in document order, so the
	resulting node set is in document order too"
	^ nodeSet sortOrder: XPathDocumentSortOrder new.