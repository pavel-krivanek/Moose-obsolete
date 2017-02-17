This class is meant to be used as a model for running a parser over a given stream.

You create it via parse:with: class side method. For example:
self parse: '1 + 2' with: PPArithmeticParser new.

Instance Variables:
	parser	<PPParser>
	result	<Object>
	children	<OrderedCollection of PPParserDebuggerResult>
	parent	<PPParserDebuggerResult>