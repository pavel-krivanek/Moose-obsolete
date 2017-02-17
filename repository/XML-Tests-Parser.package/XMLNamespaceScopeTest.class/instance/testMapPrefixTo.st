tests
testMapPrefixTo
	| scope oldPrefixMappings |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		"save to ensure prefixMappings is copied, even if unchanged"
		oldPrefixMappings := scope prefixMappings.
		scope
			mapPrefix: prefix
			to: uri.
		self
			assert: (scope prefixMappings at: prefix) = uri;
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings.

		"save to ensure prefixMappings is copied, even if unchanged"
		oldPrefixMappings := scope prefixMappings.
		scope
			mapPrefix: prefix
			to: uri.
		self
			assert: (scope prefixMappings at: prefix) = uri;
			assert: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings].
	self assert:
		scope prefixMappings associations asArray =
			self namespaces associations asArray.

	self namespaces keysDo: [:each |
		"save to ensure prefixMappings is copied, even if unchanged"
		oldPrefixMappings := scope prefixMappings.
		scope
			mapPrefix: each
			to: 'newNS'.
		self
			assert: (scope prefixMappings at: each) = 'newNS';
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings].

	"save to ensure prefixMappings is copied, even if unchanged"
	oldPrefixMappings := scope prefixMappings.
	scope
		mapPrefix: 'xml'
		to: scope xmlNamespaceURI.
	self
		assert: (scope prefixMappings at: 'xml') = scope xmlNamespaceURI;
		deny: scope prefixMappings = oldPrefixMappings;
		deny: scope prefixMappings == oldPrefixMappings.

	"cannot rebind xmlns prefix at all, even to the same URI"
	self
		should: [
			scope
				mapPrefix: 'xmlns'
				to: scope xmlnsNamespaceURI]
		raise: XMLNamespaceException.

	"cannot bind a new prefix to the xml, xmlns, or empty namespace URI"
	(Array
		with: scope xmlNamespaceURI
		with: scope xmlnsNamespaceURI
		with: '') do: [:each |
		self
			should: [
				scope
					mapPrefix: 'newPrefix'
					to: each]
			raise: XMLNamespaceException].