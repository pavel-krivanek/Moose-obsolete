private 
generateHandlerForwardingMethods
	"
	self generateHandlerForwardingMethods
	"

	(Array
		with: 'contentHandler' -> #'handling - content'
		with: 'lexicalHandler' -> #'handling - lexical'
		with: 'declarationHandler' -> #'handling - declaration')
		do: [:handlerAccessorAndCategory | | handlerAccessor handlerCategory |
			handlerAccessor := handlerAccessorAndCategory key.
			handlerCategory := handlerAccessorAndCategory value.

			(SAXHandler selectorsInCategory: handlerCategory) do: [:each | | parsedMethod sourceStream |
				parsedMethod := RBParser parseMethod: (SAXHandler sourceCodeAt: each).
				(sourceStream := String new writeStream)
					nextPutAll: parsedMethod selectorAndArgumentNames;
					cr;
					nextPutAll: '	self ';
					nextPutAll: handlerAccessor.
				1 to: parsedMethod keywords size do: [:i |
					parsedMethod keywords size > 1
						ifTrue: [
							sourceStream
								cr;
								tab;
								tab]
						ifFalse: [sourceStream space].
					sourceStream nextPutAll: (parsedMethod keywords at: i).
					parsedMethod argumentNames
						ifNotEmpty: [
							sourceStream
								space;
								nextPutAll: (parsedMethod argumentNames at: i)]].

				self
					compile: sourceStream contents
					classified: handlerCategory]]