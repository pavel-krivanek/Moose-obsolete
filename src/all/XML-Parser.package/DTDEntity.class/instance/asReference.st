converting
asReference
	^ String streamContents: [:stream | self printReferenceOn: stream]