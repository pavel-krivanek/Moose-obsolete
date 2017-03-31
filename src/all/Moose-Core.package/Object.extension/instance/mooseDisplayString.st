*moose-core
mooseDisplayString
	^ String streamContents: [:stream | self mooseDisplayStringOn: stream] 