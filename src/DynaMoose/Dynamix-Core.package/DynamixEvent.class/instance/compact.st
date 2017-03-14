private
compact

	self children isEmpty 
		ifTrue: [ children := nil ]
		ifFalse: [ children := self children asArray ]