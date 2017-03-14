tests
testOmitsRedundantXMLNSDeclarations
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
			writeWith: withBlock;
			contents) =
				('<one xmlns="defaultNS" xmlns:prefix="prefixNS">',
				'<two><three><four /></three></two>',
				'</one>').
	self assert:
		(XMLWriter new
			omitsRedundantXMLNSDeclarations: false;
			writeWith: withBlock;
			contents) =
			('<one xmlns="defaultNS" xmlns:prefix="prefixNS">',
			'<two xmlns="defaultNS" xmlns:prefix="prefixNS">',
			'<three>',
			'<four xmlns="defaultNS" xmlns:prefix="prefixNS" />',
			'</three>',
			'</two>',
			'</one>').

	self assert:
		(XMLWriter writeWith: [:writer | (writer tag: 'empty') xmlns: '']) =
			'<empty />'.

	self assert:
		(XMLWriter writeWith: [:writer |
			(writer
				omitsRedundantXMLNSDeclarations: false;
				tag: 'empty') xmlns: '']) =
			'<empty xmlns="" />'.