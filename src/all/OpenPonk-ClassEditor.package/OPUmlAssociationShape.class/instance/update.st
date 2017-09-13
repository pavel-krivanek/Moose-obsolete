Roassal2 - updating
update
	self tailDecorator: (self decoratorFor: modelElement memberEnds first).
	self headDecorator: (self decoratorFor: modelElement memberEnds second).
	self rtEdge update.
	constraints do: #update.
	self ownedElements do: #update