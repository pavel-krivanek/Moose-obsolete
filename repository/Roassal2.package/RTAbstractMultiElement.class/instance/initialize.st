initialization
initialize
	super initialize.
	ownedElements := RTGroup new.
	shape := self baseShape.
	trachelShape := shape trachelShapeFor: self.
	self createOwnedElements