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
		assert: writer lineBreak = writer canonicalLineBreak;
		assert: writer contentEscapes = writer contentCanonicalEscapes;
		assert: writer contentStringEscapes = writer contentStringCanonicalEscapes;
		assert: writer isEscaping;
		assert: writer escapesContentEntityReferences;
		assert: writer omitsRedundantXMLNSDeclarations.

	self
		assert: (writer isCanonical: false) == writer;
		assert: writer formatter isNil;
		assert: writer lineBreak = writer defaultLineBreak;
		assert: writer contentEscapes = writer contentDefaultEscapes;
		assert: writer contentStringEscapes = writer contentStringDefaultEscapes;
		assert: writer isEscaping;
		assert: writer escapesContentEntityReferences;
		assert: writer omitsRedundantXMLNSDeclarations.