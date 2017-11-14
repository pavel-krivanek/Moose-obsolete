accessing
namespaceScope
	^ XMLNamespaceScope new
		mapPrefix: '' to: 'defaultNS';
		mapPrefix: 'prefix' to: 'prefixNS';
		mapPrefix: 'otherPrefix' to: 'otherPrefixNS';
		yourself