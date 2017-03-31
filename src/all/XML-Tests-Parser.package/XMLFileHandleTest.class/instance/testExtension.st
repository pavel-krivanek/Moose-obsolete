tests
testExtension
	XMLFileHandle hasSupportedImplementation
		ifFalse: [^ self].

	self
		assert: '' asXMLFileHandle extension = '';
		assert: 'one' asXMLFileHandle extension = '';
		assert: 'one.two' asXMLFileHandle extension = 'two';
		assert: 'one.two.three' asXMLFileHandle extension = 'two.three';
		assert: '/' asXMLFileHandle extension = '';
		assert: '/one' asXMLFileHandle extension = '';
		assert: '/one.two' asXMLFileHandle extension = 'two';
		assert: '/one.two.three' asXMLFileHandle extension = 'two.three';
		assert: 'one/' asXMLFileHandle extension = '';
		assert: 'one/two' asXMLFileHandle extension = '';
		assert: 'one/two.three' asXMLFileHandle extension = 'three';
		assert: 'one/two.three.four' asXMLFileHandle extension = 'three.four';
		assert: 'one/two/' asXMLFileHandle extension = '';
		assert: 'one/two.three/' asXMLFileHandle extension = '';
		assert: 'one/two.three.four/' asXMLFileHandle extension = ''.