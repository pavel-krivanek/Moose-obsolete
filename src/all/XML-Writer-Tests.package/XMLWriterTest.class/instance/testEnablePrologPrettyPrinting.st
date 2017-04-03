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
				contentModel: 'ANY'.
			writer elementDeclaration
				name: 'ugly';
				contentModel: 'ANY'.
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
	writer comment: 'before'.
	writer pi
		target: 'beforeTarget';
		data: 'beforeData'.
	"content should be unformatted"
	writer
		tag: 'pretty'
		with: [
			writer comment: 'ugly'.
			writer pi
				target: 'uglyTarget';
				data: 'uglyData'.
			writer
				tag: 'ugly'
				with: 'test'].
	writer comment: 'after'.
	writer pi
		target: 'afterTarget';
		data: 'afterData'.

	self assert:
		writer contents =
			(self prettyPrintedLines: #(
				#(0 '<?xml version="1.0"?>'
					'<!DOCTYPE pretty [')
				#(1 '<!--element-->'
					'<!ELEMENT pretty ANY>'
					'<!ELEMENT ugly ANY>'
					'<!--entity-->'
					'<!ENTITY % comment "<!--attribute-->">'
					'%comment;'
					'<!--attribute-->'
					'<!ATTLIST pretty name CDATA #IMPLIED>'
					'<!--notation-->'
					'<!NOTATION external SYSTEM "external.txt">'
					'<?target data?>')
				#(0 ']>'
					'<!--before-->'
					'<?beforeTarget beforeData?>'
					'<pretty><!--ugly--><?uglyTarget uglyData?><ugly>test</ugly></pretty>'
					'<!--after-->'
					'<?afterTarget afterData?>'))).