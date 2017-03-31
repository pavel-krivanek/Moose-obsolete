testing
atBeginning
	"On GS streams can be 0-based or 1-based, so saving the initial position
	to test the current position works for both types and also handles streams
	that were already written to when the XMLWriter was created"

	^ stream position = streamStartPosition