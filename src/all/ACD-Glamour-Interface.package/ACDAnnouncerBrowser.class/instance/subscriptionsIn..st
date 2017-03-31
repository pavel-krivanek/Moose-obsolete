building
subscriptionsIn: aComposite 

	aComposite table
		title: 'Subscriptions';
		showOnly: 100;
		display: [ :aSession | aSession activeSubscriptions ];
		column: 'Announcement Type' evaluated: [ :aSubscription | 
			Text 
				string: (self printAnnouncementTypeFor: aSubscription announcementClass )
				attributes: (self textAttributesForSubscription: aSubscription) ];
		column: 'Action' evaluated: [ :aSubscription | 
			Text 
				string: (aSubscription action printString )
				attributes: (self textAttributesForSubscription: aSubscription) ];
		selectionAct: [:each |  each selection explore] on: $i entitled: 'Explore';
		with: [ :presentation |
			self installSubscriptionsActionsIn: presentation ]