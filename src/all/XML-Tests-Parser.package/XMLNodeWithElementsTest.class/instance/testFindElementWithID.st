tests
testFindElementWithID
	| dtd content contentWithUndeclaredAttribute document idElement xmlIDElement |

	dtd := '
		<!DOCTYPE a [
			<!ELEMENT a (
				b,
				c,
				d,
				e
			)>
			<!ELEMENT b EMPTY>
			<!ELEMENT c EMPTY>
			<!ELEMENT d EMPTY>
			<!ELEMENT e EMPTY>
			<!ATTLIST b id CDATA #REQUIRED>
			<!ATTLIST c id ID #REQUIRED>
			<!ATTLIST d xml:id ID #REQUIRED>
		]>'.
	content := '
		<a>
			<b id="one"/>
			<c id="one"/>
			<d xml:id="two"/>
			<e/>
		</a>'.
	contentWithUndeclaredAttribute := '
		<a>
			<b id="one"/>
			<c id="one"/>
			<d xml:id="two" undeclared="three"/>
			<e />
		</a>'.

	#(true false) do: [:isValidating |
		document :=
			XMLDOMParser
				parse:
					dtd,
						(isValidating
							ifTrue: [content]
							ifFalse: [contentWithUndeclaredAttribute])
				usingNamespaces: true
				validation: isValidating.
		idElement := document findElementNamed: 'c'.
		xmlIDElement := document findElementNamed: 'd'.
		self
			assert: (document findElementWithID: 'one') = idElement;
			assert: (idElement findElementWithID: 'one') = idElement;
			assert: (idElement nextElement findElementWithID: 'one') isNil;
			assert: (document findElementWithID: 'two') = xmlIDElement;
			assert: (xmlIDElement findElementWithID: 'two') = xmlIDElement;
			assert: (xmlIDElement nextElement findElementWithID: 'two') isNil;
			assert: (document findElementWithID: 'three') isNil.

		"remove them so they can't access the DTD anymore"
		document root
			removeNode: idElement;
			removeNode: xmlIDElement.
		self
			assert: (document findElementWithID: 'one') isNil;
			assert: (idElement findElementWithID: 'one') isNil;
			assert: (document findElementWithID: 'two') isNil;
			"xml:id is always an ID attribute, even without a DTD declaring it"
			assert: (xmlIDElement findElementWithID: 'two') = xmlIDElement].

	#(true false) do: [:isValidating |
		document :=
			XMLDOMParser
				parse: contentWithUndeclaredAttribute
				usingNamespaces: true
				validation: isValidating.
		xmlIDElement := document findElementNamed: 'd'.
		self
			assert: (document findElementWithID: 'one') isNil;
			"xml:id is always an ID attribute, even without a DTD declaring it"
			assert: (document findElementWithID: 'two') = xmlIDElement;
			assert: (xmlIDElement findElementWithID: 'two') = xmlIDElement].