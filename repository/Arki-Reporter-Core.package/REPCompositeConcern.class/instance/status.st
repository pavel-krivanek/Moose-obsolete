accessing
status
	| status |
	self children isEmpty ifTrue: [^ REPConcernNeutralStatus new concern: self ].
	status := self children first status.
	self children allButFirstDo: [:each | 
		status := status union: each status ].
	^ status concern: self