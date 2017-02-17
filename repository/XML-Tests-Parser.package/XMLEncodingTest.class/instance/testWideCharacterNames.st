tests
testWideCharacterNames
	| wideNames document |

	(wideNames := OrderedCollection new)
		addLast: (self stringFrom: #(16rC0 16rD6 16rD8 16rF6 16rF8 16r2FF $- $.));
		addLast: (self stringFrom: #(16r370 16r37D 16r37F 16r1FFF 16r200C $0 $9));
		addLast: (self stringFrom: #(16r200D 16r2070 16r218F 16r2C00 16r2FEF 16rB7));
		addLast: (self stringFrom: #(16r3001 16rD7FF 16rF900 16rFDCF 16rFDF0 16r0300));
		addLast: (self stringFrom: #(16rFFFD 16r10000 16rEFFFF 16r036F 16r203F 16r2040)).

	self
		shouldnt: [| source |
			source :=
				'<!DOCTYPE {1} [
					<!ELEMENT {1} ({2}, {3}, {4})>
					<!ELEMENT {2} EMPTY>
					<!ELEMENT {3} (#PCDATA)*>
					<!ELEMENT {4} EMPTY>
					<!ATTLIST {1} {5} ({3} | {4} | {5}) #IMPLIED>
				]>
				<{1} {5}="{4}">
					<{2}/>
					<{3}>{5}</{3}>
					<{4}/>
				</{1}>' format: wideNames.

			"a char-wise copy of source is parsed because wide chars aren't immediate
			types in pre-Spur Pharo/Squeak, so this can catch improper use of == on
			wide chars in those images"
			document := XMLDOMParser parse: (source collect: [:each | each copy])]
		raise: XMLParserException.

	self
		assert: document root name = wideNames first;
		assert: (document root attributeAt: wideNames fifth) = wideNames fourth;
		assert: (document root elementNames) asOrderedCollection = (wideNames copyFrom: 2 to: 4);
		assert: document contentString = wideNames fifth.