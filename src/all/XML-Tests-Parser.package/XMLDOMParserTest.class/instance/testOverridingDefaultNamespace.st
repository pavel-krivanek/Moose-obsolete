tests
testOverridingDefaultNamespace
	| document |

	document :=
		XMLDOMParser parse:
			'<outer xmlns="default"><inner xmlns=""/></outer>'.
	self
		assert: document root namespaceURI = 'default';
		assert: document root defaultNamespace = 'default';
		assert: document root firstNode namespaceURI = '';
		assert: document root firstNode defaultNamespace = ''.