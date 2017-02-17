tests
testCanonicalTags
	| writer |

	(writer := XMLWriter new)
		isCanonical: true.
	(writer tag: 'tags')
		attributeAt: 'b:d' put: '5';
		attributeAt: 'b:c' put: '4';
		attributeAt: 'a' put: '1';
		attributeAt: 'a:b' put: '3';
		attributeAt: 'xml:d' put: '2';
		xmlnsAt: 'b' put: 'ns2';
		xmlnsAt: 'a' put: 'ns1';
		xmlns: 'default';
		with: [
			(writer tag: 'cdata')
				attributeAt: 'a:a' put: '2';
				attributeAt: 'undeclared:a' put: '1';
				with: [writer cdata: '<escaped name="&value;" />'].
			writer
				tag: 'empty'
				with: nil].

	self assert:
		writer contents =
			('<tags xmlns="default" xmlns:a="ns1" xmlns:b="ns2" a="1" xml:d="2" a:b="3" b:c="4" b:d="5">',
			'<cdata undeclared:a="1" a:a="2">&lt;escaped name="&amp;value;" /&gt;</cdata>',
			'<empty></empty>',
			'</tags>').