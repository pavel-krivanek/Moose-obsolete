invoking
function
	| object ids document nodeSet |

	object := self firstArgument.
	ids := Set new.
	object class == self nodeSetClass
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
		and: [self contextNode notNil
			and: [(document := self contextNode document) notNil]])
		ifTrue: [| element |
			ids do: [:each |
				((element := document findElementWithID: each) notNil
					and: [(nodeSet includes: element) not])
					ifTrue: [nodeSet addLast: element]]].
	^ nodeSet.