writing
write
	"writes any unwritten markup, including any markup writer that hasn't
	been written yet"

	self activeMarkupWriterWhileChangingDo: [:each |
		each hasStartedWriting
			ifFalse: [each write]]