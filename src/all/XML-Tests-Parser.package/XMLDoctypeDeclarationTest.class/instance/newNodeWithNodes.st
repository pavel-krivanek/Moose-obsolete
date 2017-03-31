instance creation
newNodeWithNodes
	^ self newNode
		addNode: (XMLComment string: 'before');
		addNode: (XMLGeneralEntityDeclaration name: 'one' replacement: 'two');
		addNode: (XMLParameterEntityDeclaration name: 'three' publicID: 'four' systemID: 'four');
		addNode: (XMLElementDeclaration element: 'five' contentModel: '(six|sevent|eight)');
		addNode:
			(XMLAttributeDeclaration
				element: 'five'
				attribute: 'nine'
				type: 'CDATA'
				defaultPragma: '#IMPLIED'
				defaultValue: 'ten');
		addNode:
			(XMLNotationDeclaration
				name: 'eleven'
				publicID: 'twelve'
				systemID: 'twelve');
		addNode: (XMLPI target: 'thirteen' data: 'fourteen');
		addNode: (XMLComment string: 'after');
		yourself