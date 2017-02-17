private
generateInterruptingRecordingHandlerMethods
	"
	self generateInterruptingRecordingHandlerMethods
	"

	#(#'handling - content'
		#'handling - lexical'
		#'handling - declaration')
		do: [:handlerCategory |
			(SAXHandler selectorsInCategory: handlerCategory) do: [:handlerSelector | | parsedMethod sourceStream |
				parsedMethod := RBParser parseMethod: (SAXHandler sourceCodeAt: handlerSelector).
				(sourceStream := String new writeStream)
					nextPutAll: parsedMethod selectorAndArgumentNames;
					cr;
					nextPutAll: '	super'.
				1 to: parsedMethod keywords size do: [:i |
					parsedMethod keywords size > 1
						ifTrue: [
							sourceStream
								cr;
								nextPutAll: '		']
						ifFalse: [sourceStream space].
					sourceStream nextPutAll: (parsedMethod keywords at: i).
					parsedMethod arguments
						ifNotEmpty: [
							sourceStream
								space;
								nextPutAll: (parsedMethod argumentNames at: i)]].
				sourceStream
					nextPut: $.;
					cr;
					cr;
					nextPutAll: '	self interruptOn = #', handlerSelector asString;
					cr;
					nextPutAll: '		ifTrue: [self interruptParsing].'.
				self
					compile: sourceStream contents
					classified: handlerCategory]]