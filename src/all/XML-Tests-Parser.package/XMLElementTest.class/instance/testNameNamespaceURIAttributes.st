tests
testNameNamespaceURIAttributes
	| attributes unprefixedAttributes element |

	attributes := self attributes.
	unprefixedAttributes := self unprefixedAttributes.
	element :=
		self nodeClass
			name: 'one'
			namespaceURI: 'defaultNS'
			attributes: unprefixedAttributes.
	self
		assert: element class == self nodeClass;
		assert: element name = 'one';
		assert: element namespaceURI = 'defaultNS';
		assertElement: element hasAttributes: unprefixedAttributes.

	element :=
		self nodeClass
			name: 'prefix:two'
			namespaceURI: 'prefixNS'
			attributes: attributes associations.
	self
		assert: element class == self nodeClass;
		assert: element name = 'prefix:two';
		assert: element namespaceURI = 'prefixNS';
		assertElement: element hasAttributes: attributes.

	"if the attributes have a prefix, then the element must have the
	same prefix and the namespace must be non-empty"
	self
		should: [
			self nodeClass
				name: 'three'  "no prefix"
				namespaceURI: ''  "no namespace"
				attributes: attributes]
		raise: XMLNamespaceException.
	self
		should: [
			self nodeClass
				name: 'four' "no prefix"
				namespaceURI: 'prefixNS'
				attributes: attributes]
		raise: XMLNamespaceException.
	self
		should: [
			self nodeClass
				name: 'prefix:five'
				namespaceURI: ''  "no namespace"
				attributes: unprefixedAttributes]
		raise: XMLNamespaceException.