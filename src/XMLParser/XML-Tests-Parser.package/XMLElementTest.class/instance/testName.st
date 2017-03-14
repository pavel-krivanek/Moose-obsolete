tests
testName
	| element |

	"XMLElement class>>#name: is not tested here because it is soft-deprecated"

	element := self newNode.
	self
		assert: element name = '';
		assert: (element name: 'one') == element;
		assert: element name = 'one';
		assert: (element name: 'two') == element;
		assert: element name = 'two'.
	self
		should: [element name: 'unmapped:two']
		raise: XMLNamespaceException.

	element usesNamespaces: false.
	self
		shouldnt: [element name: 'unmapped:three']
		raise: XMLNamespaceException.
	self assert: element name = 'unmapped:three'.