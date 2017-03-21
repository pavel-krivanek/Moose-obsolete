examples
example03
	"
	self new example03
	"
	<noTest>
	| b |
	b := RTNameCloud new. 
	b dictionary: (RTSourceCodeDictionary new).
	RTObject withAllSubclasses do: [ :c | 
		b addObjects: c rtmethods description: #getSource ].
	^ b