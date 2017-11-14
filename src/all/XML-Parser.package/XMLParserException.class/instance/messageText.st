accessing
messageText
	| rawMessageText messageTextStream |

	rawMessageText := super messageText.
	(self hasLineNumber
		or: [self hasBaseURI])
		ifFalse: [^ rawMessageText].

	(messageTextStream := (String new: rawMessageText size * 2) writeStream)
		nextPutAll: rawMessageText;
		nextPutAll: ' ('.
	self hasLineNumber
		ifTrue: [
			messageTextStream
				nextPutAll: 'near line ';
				nextPutAll: self lineNumber asString.
			self hasColumnNumber
				ifTrue: [
					messageTextStream
						nextPutAll: ', column ';
						nextPutAll: self columnNumber asString]].

	self hasBaseURI
		ifTrue: [
			messageTextStream
				nextPutAll:
					(self hasLineNumber
						ifTrue: [' in ']
						ifFalse: ['in ']);
				nextPutAll: self baseURI].
			
	^ messageTextStream
		nextPut: $);
		contents.