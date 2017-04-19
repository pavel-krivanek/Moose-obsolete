initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	context := XMLUnitializedContext new.
	driver := aDriver.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: aReadLimit).

	"must use #writeStream instead of 'WriteStream on:' to get 0-based
	streams on Gemstone"
	nameStream := (String new: 16) writeStream.
	"this separate stream is needed because XML text delcarations can occur
	in the replacement of external general entity references in PCDATA and
	external parameter entity references within declarations in the external
	subset or external entities, and characterStream would already be in use
	in both cases"
	xmlDeclarationStream := (String new: 8) writeStream.
	characterStream := (String new: 128) writeStream.