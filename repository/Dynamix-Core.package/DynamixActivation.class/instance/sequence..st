accessing-derived
sequence: aLength
	"comment stating purpose of message"
	self propertyNamed: #seqsize put:  aLength.
	"self propertyNamed: #seqsize ifAbsentPut: [ aLength ]."