tests
testAtBeginning
	"on GS #writeStream gives an ANSI 0-based position stream,
	but WriteStream on: doesn't, so both are tested, and we
	test to make sure anything written before creating the
	writer is ignored by atBeginning"

	(Array
		with: String new writeStream
		with: (WriteStream on: String new)
		with: (String withAll: 'test') writeStream
		with: (WriteStream on: (String withAll: 'test')))
		do: [:stream | | writer |
			writer := XMLWriter on: stream.
			self assert: writer atBeginning.

			stream nextPut: $<.
			self deny: writer atBeginning]