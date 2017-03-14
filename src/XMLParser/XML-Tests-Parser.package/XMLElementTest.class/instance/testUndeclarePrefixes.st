tests
testUndeclarePrefixes
	| element innerElement |

	element :=
		self nodeClass
			name: 'outer'
			namespaces: self namespaces
			attributes: self unprefixedAttributes.
	(innerElement := element addElementNamed: 'prefixTwo:inner')
		declarePrefix: 'prefixTwo'
		uri: 'newNS'.

	self
		assert: (element undeclarePrefixes) == element;
		deny: element hasNamespaces;
		assert: innerElement hasNamespaces;
		assert: innerElement declaredPrefixes asArray = #('prefixTwo');
		assert: (innerElement resolvePrefix: 'prefixTwo') = 'newNS'.

	self
		should: [innerElement undeclarePrefixes]
		raise: XMLNamespaceException.