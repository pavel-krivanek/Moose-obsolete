tests
testIsCanonical
	| writer |

	(writer := XMLWriter new)
		enablePrettyPrinting;
		lineBreak: Character cr;
		isEscaping: false;
		escapesContentEntityReferences: false;
		omitsRedundantXMLNSDeclarations: false.
	self
		assert: (writer isCanonical: false) == writer;
		assert: (writer formatter isKindOf: XMLPrettyPrintingWriterFormatter);
		assert: writer lineBreak = String cr;
		deny: writer isEscaping;
		deny: writer escapesContentEntityReferences;
		deny: writer omitsRedundantXMLNSDeclarations.

	self
		assert: (writer isCanonical: true) == writer;
		assert: (writer formatter isKindOf: XMLCanonicalWriterFormatter);
		assert: writer lineBreak = XMLWriter canonicalLineBreak;
		assert: writer contentEscapes = XMLWriter contentCanonicalEscapes;
		assert: writer contentStringEscapes = XMLWriter contentStringCanonicalEscapes;
		assert: writer isEscaping;
		assert: writer escapesContentEntityReferences;
		assert: writer omitsRedundantXMLNSDeclarations.

	self
		assert: (writer isCanonical: false) == writer;
		assert: writer formatter isNil;
		assert: writer lineBreak = XMLWriter defaultLineBreak;
		assert: writer contentEscapes = XMLWriter contentEscapes;
		assert: writer contentStringEscapes = XMLWriter contentStringEscapes;
		assert: writer isEscaping;
		assert: writer escapesContentEntityReferences;
		assert: writer omitsRedundantXMLNSDeclarations.