tests
testNamespaceURIFunction
	self
		assert: (document xpath: 'namespace-uri(/*)') isEmpty;
		assert: (document root xpath: 'namespace-uri()') isEmpty;
		assert: (document xpath: 'namespace-uri(/*/*)') isEmpty;
		assert: (namespacedDocument xpath: 'namespace-uri(/*)') = 'bookNS';
		assert: (namespacedDocument root xpath: 'namespace-uri()') = 'bookNS';
		assert: (namespacedDocument xpath: 'namespace-uri(/*/*)') = 'personNS'