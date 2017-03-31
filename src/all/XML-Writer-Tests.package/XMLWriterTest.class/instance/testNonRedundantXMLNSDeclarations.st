tests
testNonRedundantXMLNSDeclarations
	| withBlock |

	withBlock := [:writer |
		(writer tag: 'one')
			xmlns: 'defaultNS';
			xmlnsAt: 'prefix' put: 'prefixNS';
			with: [
				(writer tag: 'two')
					xmlns: 'newDefaultNS';
					xmlnsAt: 'prefix' put: 'newPrefixNS';
					with: [
						"skip one tag"
						writer
							tag: 'three'
							with: [
								"then add more non-reundant xmlns declarations"
								(writer tag: 'four')
									xmlns: '';
									xmlnsAt: 'prefix' put: 'prefixNS']]]].
	self assert:
		(XMLWriter new
			writeWith: withBlock;
			contents) =
				('<one xmlns="defaultNS" xmlns:prefix="prefixNS">',
				'<two xmlns="newDefaultNS" xmlns:prefix="newPrefixNS">',
				'<three>',
				'<four xmlns="" xmlns:prefix="prefixNS" />',
				'</three>',
				'</two>',
				'</one>').