tests
testCanonicalRedundantXMLNSDeclarations
	| withBlock |

	withBlock := [:writer |
		(writer tag: 'one')
			xmlns: 'defaultNS';
			xmlnsAt: 'prefix' put: 'prefixNS';
			with: [
				(writer tag: 'two')
					xmlns: 'defaultNS';
					xmlnsAt: 'prefix' put: 'prefixNS';
					with: [
						"skip one tag"
						writer
							tag: 'three'
							with: [
								"then add more reundant xmlns declarations"
								(writer tag: 'four')
									xmlns: 'defaultNS';
									xmlnsAt: 'prefix' put: 'prefixNS']]]].
	self assert:
		(XMLWriter new
			isCanonical: true;
			writeWith: withBlock;
			contents) =
				('<one xmlns="defaultNS" xmlns:prefix="prefixNS">',
				'<two><three><four></four></three></two>',
				'</one>').

	self assert:
		(XMLWriter new
			isCanonical: true;
			writeWith: [:writer | (writer tag: 'empty') xmlns: ''];
			contents) = '<empty></empty>'.