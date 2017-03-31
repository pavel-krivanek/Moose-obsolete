private
generateRecordingHandlerMethods
	"
	self generateRecordingHandlerMethods
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
					nextPutAll: '	self messageRecorder';
					cr;
					nextPutAll: '		recordMessageReceiver: self';
					cr;
					nextPutAll: '		selector: #', handlerSelector asString.
				parsedMethod arguments
					ifNotEmpty: [
						sourceStream
							cr;
							nextPutAll: '		arguments:';
							cr;
							nextPutAll: '			(OrderedCollection new'.
						parsedMethod argumentNames do: [:each |
							sourceStream
								cr;
								nextPutAll: '				addLast: ', each, ';'].
						sourceStream
							cr;
							nextPutAll: '				yourself)'].

				self
					compile: sourceStream contents
					classified: handlerCategory]]