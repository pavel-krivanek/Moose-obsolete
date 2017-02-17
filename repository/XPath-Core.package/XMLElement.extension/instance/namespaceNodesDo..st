*XPath-Core-enumerating
namespaceNodesDo: aBlock
	"every element has a node for the default xml namespace.
	if it isn't explicitly defined, then it's first in order"
	self usesNamespaces
		ifFalse: [^ self].

	(self hasNamespaces
		and: [self namespaceScope includesPrefix: 'xml'])
		ifFalse: [aBlock value: (XPathNamespaceNode withXMLNamespaceOnElement: self)].

	self hasNamespaces
		ifTrue: [
			self namespaceScope prefixesAndURIsDo: [:prefix :uri |
				aBlock value:
					(XPathNamespaceNode
						element: self
						name: prefix
						uri: uri)]].