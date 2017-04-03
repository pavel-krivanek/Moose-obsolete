tests
testEnablePrettyPrintingDTD
	| writer |

	(writer := XMLWriter new)
		enablePrettyPrinting;
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
				defaultPragma: '#IMPLIED'.
			writer comment: 'notation'.
			writer notationDeclaration
				name: 'external';
				systemID: 'external.txt'.
			writer pi
				target: 'target';
				data: 'data'].

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
					'<!ATTLIST pretty name CDATA #IMPLIED>'
					'<!--notation-->'
					'<!NOTATION external SYSTEM "external.txt">'
					'<?target data?>')
				#(0 ']>'
					''))).