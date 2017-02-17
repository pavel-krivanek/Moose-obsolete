tests
testOptimizeForLargeDocuments
	| parser |

	parser := XMLDOMParser on: ''.

	parser optimizeForLargeDocuments.
	self
		deny: parser isValidating;
		deny: parser usesNamespaces;
		assert: parser documentReadLimit isNil;
		assert: parser nodeFactory attributeListClass == XMLAttributeList.