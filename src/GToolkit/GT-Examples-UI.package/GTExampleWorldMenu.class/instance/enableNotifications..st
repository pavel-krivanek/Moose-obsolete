private
enableNotifications: aBuilder
	(lastItem := aBuilder item: 'Enable notifications')
		parent: #gte;
		action: [ GTExampleNautilusNotifications start ]