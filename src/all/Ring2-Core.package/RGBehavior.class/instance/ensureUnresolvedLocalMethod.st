queries - methods
ensureUnresolvedLocalMethod

	| newMethod |
	newMethod := RGMethod parent: self.
	self addLocalMethod: newMethod.
	^ newMethod