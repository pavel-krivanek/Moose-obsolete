utilities
assertNavigationInvariant: aXmlNode
	"Assert that the firstChild, lastChild, previousSibling, nextSibling are properly setup."

	| current children |
	aXmlNode nodesDo: [ :node |

		" forward "
		current := node firstChild.
		children := OrderedCollection withAll: node children.
		[ current isNil ] whileFalse: [
			self assert: children notEmpty.
			self assert: children removeFirst == current.
			current := current nextSibling ].
		self assert: children isEmpty.
		
		" backward "
		current := node lastChild.
		children := OrderedCollection withAll: node childNodes.
		[ current isNil ] whileFalse: [
			self assert: children notEmpty.
			self assert: children removeLast == current.
			current := current previousSibling ].
		self assert: children isEmpty ]