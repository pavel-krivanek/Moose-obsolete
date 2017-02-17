actions
stop
	" self stop "
	SystemAnnouncer uniqueInstance unsubscribeThoroughly: self.
	Announcer allSubInstances do: [ :each | each unsubscribeThoroughly: self ].
	notifying := false