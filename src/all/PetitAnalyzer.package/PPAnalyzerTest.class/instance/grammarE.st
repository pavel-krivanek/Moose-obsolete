accessing
grammarE
	"The most stupid parser, it just references itself and never consumes anything. All algorithms should survive such an attack."

	| parser |
	parser := PPDelegateParser new.
	parser setParser: parser.
	^ parser