source
internalSubsetXMLWithDeclarations
	^ '<!DOCTYPE root PUBLIC "pubid" "external.dtd" [
			<!ELEMENT root ( #PCDATA | one | two)* >
			<!ATTLIST root
						name CDATA #IMPLIED
						number ( one | two | three ) "three">
			<!ENTITY general "replacement">
			<!ENTITY externalGeneral PUBLIC "pubid2" "external1.dtd">
			<!ENTITY % parameter "replacement">
			<!ENTITY % externalParameter SYSTEM "external2.dtd">
			<!NOTATION notation SYSTEM "note.doc">
		]>
		<root>test</root>'