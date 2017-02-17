tests
testName
	| attribute |

	"XMLAttribute class>>#name: is not tested here because it is soft-deprecated"

	attribute := self newNode.
	self
		assert: attribute name = '';
		assert: (attribute name: 'one') == attribute;
		assert: attribute name = 'one';
		assert: (attribute name: 'prefix:two') == attribute;
		assert: attribute name = 'prefix:two'.