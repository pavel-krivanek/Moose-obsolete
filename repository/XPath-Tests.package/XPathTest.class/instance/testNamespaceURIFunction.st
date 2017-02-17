tests
testNamespaceURIFunction
	self
		assert: (document xPath: 'namespace-uri(/*)') isEmpty;
		assert: (document root xPath: 'namespace-uri()') isEmpty;
		assert: (document xPath: 'namespace-uri(/*/*)') isEmpty;
		assert: (namespacedDocument xPath: 'namespace-uri(/*)') = 'bookNS';
		assert: (namespacedDocument root xPath: 'namespace-uri()') = 'bookNS';
		assert: (namespacedDocument xPath: 'namespace-uri(/*/*)') = 'personNS'