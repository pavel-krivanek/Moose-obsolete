tests
testNamespacesDisabledAttributes
	| document |

	document :=
		XMLDOMParser
			parse: '<root xmlns:prefix="prefixNS" xmlns="defaultNS" name="value"/>'
			usingNamespaces: false.
	self
		assert: document root attributeNames asArray = #('xmlns:prefix' 'xmlns' 'name');
		assert: (document root attributeAt: 'xmlns:prefix') = 'prefixNS';
		assert: (document root attributeAt: 'xmlns') = 'defaultNS';
		assert: (document root attributeAt: 'name') = 'value'.