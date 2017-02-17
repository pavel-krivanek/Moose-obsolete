tests
testStartingAndFinishing
	| writer outer inner |

	writer := XMLWriter new.

	(outer := writer tag)
		name: 'outer';
		attributeAt: 'test' put: 'value';
		xmlns: 'default';
		startWriting.

	(inner := writer tag: 'inner')
		startWriting.
	writer string: 'test'.
	(writer tag: 'empty')
		startWriting;
		finishWriting.
	inner finishWriting.
	outer finishWriting.

	self assert:
		writer contents =
			'<outer xmlns="default" test="value"><inner>test<empty /></inner></outer>'.