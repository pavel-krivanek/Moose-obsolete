actions
start
	" self start "
	notifying == true ifTrue: [ ^ self ].
	SystemAnnouncer uniqueInstance weak 
		when: GTExamplesModifiedAnnouncement send: #changed: to: self.
	notifying := true