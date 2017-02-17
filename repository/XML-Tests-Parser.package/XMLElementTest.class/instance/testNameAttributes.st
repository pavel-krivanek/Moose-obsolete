tests
testNameAttributes
	| attributes unprefixedAttributes element |

	attributes := self attributes.
	unprefixedAttributes := self unprefixedAttributes.
	element :=
		self nodeClass
			name: 'one'
			attributes: self unprefixedAttributeAssociations.
	self
		assert: element class == self nodeClass;
		assert: element name = 'one';
		assertElement: element hasAttributes: unprefixedAttributes.

	"attributes: should accept any collection of associations"
	element :=
		self nodeClass
			name: 'two'
			attributes: unprefixedAttributes associations.
	self
		assert: element name = 'two';
		assert: element class == self nodeClass;
		assertElement: element hasAttributes: unprefixedAttributes.

	self
		should: [
			self nodeClass
				name: 'undeclared:three'
				attributes: unprefixedAttributes]
		raise: XMLNamespaceException.
	"prefixed attributes are not accepted"
	self
		should: [
			self nodeClass
				name: 'four'
				attributes: attributes]
		raise: XMLNamespaceException.