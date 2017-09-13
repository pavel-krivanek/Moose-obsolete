accessing
datatype: aDataType
	"The DataType that owns this Property, if any."
	datatype := OPUMLToOneLink
		on: self identity
		update: #ownedAttributes
		from: datatype
		to: aDataType