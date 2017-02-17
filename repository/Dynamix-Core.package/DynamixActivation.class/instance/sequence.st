accessing-derived
sequence
	"comment stating purpose of message"
	self propertyNamed: #seqsize
			ifNil:[^0].
	^self propertyNamed: #seqsize