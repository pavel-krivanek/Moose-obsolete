private
toggleNotifications: aBuilder
	GTExampleNautilusNotifications isEnabled
		ifTrue: [ self disableNotifications: aBuilder ]
		ifFalse: [ self enableNotifications: aBuilder ]