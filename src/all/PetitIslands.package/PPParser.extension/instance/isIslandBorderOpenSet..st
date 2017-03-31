*petitislands
isIslandBorderOpenSet: set
	"private helper for acceptsEmpsilon that makes sure to avoid cycles (using open set)"
	self children isEmpty ifTrue: [ ^ self isIslandBorder ].
	
	self shouldBeImplemented .