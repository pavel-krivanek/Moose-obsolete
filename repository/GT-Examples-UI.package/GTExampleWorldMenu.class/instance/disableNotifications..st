private
disableNotifications: aBuilder
	(lastItem := aBuilder item: 'Disable notifications')
		parent: #gte;
		action: [ GTExampleNautilusNotifications stop ]