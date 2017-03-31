initialization
on: aStringOrStream for: aHandler
	readStream :=
		(aStringOrStream isStream
			ifTrue: [aStringOrStream asXPathReadStreamAdapter]
			ifFalse: [aStringOrStream readStream asXPathReadStreamAdapter]).
	handler := aHandler.
	"must use #writeStream instead of 'WriteStream on:' to get a 0-based
	stream on Gemstone"
	writeStream := (String new: 32) writeStream.