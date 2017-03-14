tests
testEscapesContentEntityReferences
	| writer |

	writer := XMLWriter new.
	self
		assert: (writer escapesContentEntityReferences: true) == writer;
		assert: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes = XMLWriter contentEscapes;
		assert: writer contentStringEscapes = XMLWriter contentStringEscapes.

	self
		assert: (writer escapesContentEntityReferences: false) == writer;
		deny: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes = XMLWriter contentNonEntityEscapes;
		assert: writer contentStringEscapes = XMLWriter contentStringNonEntityEscapes.

	writer isEscaping: false.
	self
		deny: writer escapesContentEntityReferences;
		assert: (writer escapesContentEntityReferences: true) == writer;
		assert: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes = XMLWriter contentEscapes;
		assert: writer contentStringEscapes = XMLWriter contentStringEscapes.