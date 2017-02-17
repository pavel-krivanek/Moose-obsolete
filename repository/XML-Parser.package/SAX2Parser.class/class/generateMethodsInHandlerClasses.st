private 
generateMethodsInHandlerClasses
	"
	self generateMethodsInHandlerClasses
	"

	(Array
		with: SAX2ContentHandler -> #'handling - content'
		with: SAX2LexicalHandler -> #'handling - lexical'
		with: SAX2DeclarationHandler -> #'handling - declaration')
		do: [:handlerClassAndCategory | | handlerClass handlerCategory |
			handlerClass := handlerClassAndCategory key.
			handlerCategory := handlerClassAndCategory value.

			(SAXHandler selectorsInCategory: handlerCategory) do: [:each |
				handlerClass
					compile: (SAXHandler sourceCodeAt: each)
					classified: handlerCategory]]