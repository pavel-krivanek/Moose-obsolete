tests
testAttributes
	| writer tag |

	writer := XMLWriter new.
	tag := writer  tag: 'outer' attributes: (Array with: 'first' -> 'one').
	self
		assert: tag hasAttributes;
		assert: (tag attributeAt: 'first') = 'one';
		assert: (tag attributeAt: 'second' put: 'two') = 'two';
		assert: (tag attributeAt: 'third' ifAbsentPut: ['three']) = 'three';
		assert: (tag attributeAt: 'fourth' ifAbsent: [nil]) isNil;
		assert: (tag attributeAt: 'fourth') isEmpty;
		assert: (tag attributes at: 'fourth') isEmpty;
		deny: (tag includesAttribute: 'fourth').

	tag with: [
		writer
			tag: 'inner'
			attributes: (Dictionary with: 'fourth' -> 'four')
			with: 'test'].
	self assert:
		writer contents =
			'<outer first="one" second="two" third="three"><inner fourth="four">test</inner></outer>'.