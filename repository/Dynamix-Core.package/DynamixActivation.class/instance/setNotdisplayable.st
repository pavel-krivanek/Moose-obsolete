accessing-derived
setNotdisplayable
	"comment stating purpose of message"
	^(self propertyNamed: #notdisplayable ifAbsentPut: [1] )