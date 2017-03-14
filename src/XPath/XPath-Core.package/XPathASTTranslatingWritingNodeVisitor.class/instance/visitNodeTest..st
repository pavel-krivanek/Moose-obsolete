visiting - node tests
visitNodeTest: aNodeTest
	(aNodeTest isAttributeNodeTestForPrefix
		or: [aNodeTest isElementNodeTestForPrefix
			or: [aNodeTest isNamespaceNodeTestForPrefix]])
		ifFalse: [
			self
				emit: $(;
				emitAll: self nodeTestsVariable;
				emitAll: ' at:';
				emitAll: nodeTests size asString;
				emit: $)]