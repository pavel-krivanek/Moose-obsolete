accessing
height: aValueOrAOneArgBlock
	"Set the height of the label"
	"aValueOrAOneArgBlock is applied on the object model"
	self heightElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]