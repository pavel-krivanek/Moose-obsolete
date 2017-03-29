tests
testEnablePrologPrettyPrinting
	| writer |

	(writer := XMLWriter new)
		enablePrologPrettyPrinting;
		xml.
	writer doctype
		root: 'pretty';
		with: [
			writer comment: 'element'.
			writer elementDeclaration
				name: 'pretty';
				contentModel: 'EMPTY'.
			writer comment: 'entity'.
			writer entityDeclaration
				isParameter: true;
				name: 'comment';
				replacement: '<!--attribute-->'.
			writer % 'comment'.
			writer comment: 'attribute'.
			writer attributeDeclaration
				element: 'pretty';
				attribute: 'name';
				type: 'CDATA';
				defaultPragma: '#REQUIRED'.
			writer comment: 'notation'.
			writer notationDeclaration
				name: 'external';
				systemID: 'external.txt'].
	writer
		tag: 'test';
		comment: 'comment'.

	self assert:
		writer contents =
			(self prettyPrintedLines: #(
				#(0 '<?xml version="1.0"?>'
					'<!DOCTYPE pretty [')
				#(1 '<!--element-->'
					'<!ELEMENT pretty EMPTY>'
					'<!--entity-->'
					'<!ENTITY % comment "<!--attribute-->">'
					'%comment;'
					'<!--attribute-->'
					'<!ATTLIST pretty name CDATA #REQUIRED>'
					'<!--notation-->'
					'<!NOTATION external SYSTEM "external.txt">')
				#(0 ']>'
					'<test />'
					'<!--comment-->'))).