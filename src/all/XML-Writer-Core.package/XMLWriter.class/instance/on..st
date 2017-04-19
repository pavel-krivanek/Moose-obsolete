initialization
on: aStream
	stream := aStream.
	streamStartPosition := aStream position.
	markupWriterStack := OrderedCollection new.
	lineBreak := self defaultLineBreak.
	contentEscapes := self contentDefaultEscapes.
	contentStringEscapes := self contentStringDefaultEscapes.
	isEscaping := true.
	isCanonical := false.
	outputsSelfClosingTags := true.
	omitsRedundantXMLNSDeclarations := true.
	hadActiveTagWriter := false.