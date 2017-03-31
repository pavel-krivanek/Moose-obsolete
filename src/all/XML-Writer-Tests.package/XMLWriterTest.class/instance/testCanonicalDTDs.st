tests
testCanonicalDTDs
	| writer |

	(writer := XMLWriter new)
		isCanonical: true;
		comment: 'before dtd'.
	writer doctype
		root: 'element';
		systemID: 'doc.dtd';
		with: [
			writer comment: 'ignored'.
			writer elementDeclaration
				name: 'ignored';
				contentModel: 'EMPTY'.
			writer entityDeclaration
				name: 'ignored';
				replacement: 'ignored'.
			writer attributeDeclaration
				element: 'ignored';
				attribute: 'ignored';
				type: 'CDATA';
				defaultPragma: '#REQUIRED'.
			writer notationDeclaration
				name: 'external';
				systemID: 'external.txt'.
			writer pi
				target: 'ignored';
				data: 'ignored'].
	writer
		comment: 'after dtd';
		tag: 'empty'.

	self assert:
		writer contents =
			(self onCanonicalLineBreakJoin:
				#('<!--before dtd-->'
					'<!--after dtd-->'
					'<empty></empty>')).