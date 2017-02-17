as yet unclassified
flushAll

	self allInstances do: [ :each |
		SystemAnnouncer uniqueInstance unsubscribe: each ]