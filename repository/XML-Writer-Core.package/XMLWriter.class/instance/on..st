initialization
on: aStream
	stream := aStream.
	streamStartPosition := aStream position.
	markupWriterStack := OrderedCollection new.
	lineBreak := DefaultLineBreak.
	contentEscapes := ContentEscapes.
	contentStringEscapes := ContentStringEscapes.
	isEscaping := true.
	isCanonical := false.
	outputsSelfClosingTags := true.
	omitsRedundantXMLNSDeclarations := true.
	hadActiveTagWriter := false.