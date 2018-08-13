accessing - backend
unresolveSuperclass

	self announceDefinitionChangeDuring: [ 
		self pvtSuperclass: (RGUnresolvedValue recursive) ].