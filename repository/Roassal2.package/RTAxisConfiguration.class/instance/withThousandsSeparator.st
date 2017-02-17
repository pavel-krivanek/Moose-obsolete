configuration
withThousandsSeparator
	"Make the labels on the axis using comma separatation of thousands"
	self labelConversion: [ :number | number asInteger asStringWithCommas ] 