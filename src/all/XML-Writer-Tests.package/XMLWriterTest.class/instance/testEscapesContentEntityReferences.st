tests
testEscapesContentEntityReferences
	| writer |

	writer := XMLWriter new.
	self
		assert: (writer escapesContentEntityReferences: true) == writer;
		assert: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes = writer contentDefaultEscapes;
		assert: writer contentStringEscapes = writer contentStringDefaultEscapes.

	self
		assert: (writer escapesContentEntityReferences: false) == writer;
		deny: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes = writer contentNonEntityEscapes;
		assert: writer contentStringEscapes = writer contentStringNonEntityEscapes.

	writer isEscaping: false.
	self
		deny: writer escapesContentEntityReferences;
		assert: (writer escapesContentEntityReferences: true) == writer;
		assert: writer escapesContentEntityReferences;
		assert: writer isEscaping;
		assert: writer contentEscapes = writer contentDefaultEscapes;
		assert: writer contentStringEscapes = writer contentStringDefaultEscapes.