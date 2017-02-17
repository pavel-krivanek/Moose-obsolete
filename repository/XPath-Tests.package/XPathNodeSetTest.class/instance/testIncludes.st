tests
testIncludes
	| list element namespaceNode |

	list := self emptyList.
	self listItems do: [:each |
		self deny: (list includes: each).
		list add: each.
		self assert: (list includes: each)].

	self listItems do: [:each |
		list remove: each.
		self deny: (list includes: each)].

	element := XMLElement new.
	namespaceNode := XPathNamespaceNode withXMLNamespaceOnElement: element.
	self deny: (list includes: namespaceNode).
	list add: namespaceNode.
	self assert: (list includes: namespaceNode).

	"namespace nodes define ="
	self assert:
		(list includes:
			(XPathNamespaceNode withXMLNamespaceOnElement: element)).