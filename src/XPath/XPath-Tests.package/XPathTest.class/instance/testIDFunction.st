tests
testIDFunction
	| dtdWithIDs contentWithIDs documentWithIDs idElements |

	dtdWithIDs :=
		'<!DOCTYPE one [
			<!ELEMENT one ANY>
			<!ATTLIST one id ID #REQUIRED>
			<!ELEMENT two ANY>
			<!ATTLIST two id2 ID #IMPLIED>
			<!ELEMENT three ANY>
			<!ATTLIST three
				xml:id ID #REQUIRED
				id3 CDATA #IMPLIED>
			<!ELEMENT four ANY>
			<!ATTLIST four id4 ID #REQUIRED>
			<!ELEMENT five ANY>
			<!ATTLIST five id CDATA #IMPLIED>
			<!ELEMENT six ANY>
			<!ATTLIST six id2 CDATA #IMPLIED>
			<!ELEMENT seven ANY>
			<!ATTLIST seven id4 CDATA #IMPLIED>
		]>'.
	contentWithIDs := '
		<one id="first">
			<two/>
			<three xml:id="third" id3="non-id">
				<four id4="fourth">
					<five id="non-id">first</five>
					<six id2="non-id">third</six>
					<seven id4="non=id">non-id</seven>
				</four>
			</three>
		</one>'.

	#(true false) do: [:isValidating |
		documentWithIDs :=
			XMLDOMParser
				parse: dtdWithIDs, contentWithIDs
				usingNamespaces: true
				validation: isValidating.
		idElements :=
			documentWithIDs allElementsSelect: [:each |
				each isNamedAny: #('one' 'three')].
		self
			assertNodeSet: (documentWithIDs xPath: 'id("  first  third  non-id  ")')
			hasNodes: idElements.
		self
			assertNodeSet: (documentWithIDs xPath: 'id("first third non-id")')
			hasNodes: idElements.
		self
			assertNodeSet: (documentWithIDs xPath: 'id(//*)')
			hasNodes: idElements].

	"xml:id attributes should always be recognized, even without a DTD"
	#(true false) do: [:isValidating |
		documentWithIDs :=
			XMLDOMParser
				parse: contentWithIDs
				usingNamespaces: true
				validation: isValidating.
		idElements :=
			documentWithIDs allElementsSelect: [:each |
				each isNamedAny: #('three')].
		self
			assertNodeSet: (documentWithIDs xPath: 'id("  first  third  non-id  ")')
			hasNodes: idElements.
		self
			assertNodeSet: (documentWithIDs xPath: 'id("first third non-id")')
			hasNodes: idElements.
		self
			assertNodeSet: (documentWithIDs xPath: 'id(//*)')
			hasNodes: idElements].