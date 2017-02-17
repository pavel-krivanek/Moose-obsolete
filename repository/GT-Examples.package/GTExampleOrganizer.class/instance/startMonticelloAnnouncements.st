private
startMonticelloAnnouncements
	monticelloAnnouncements == true ifTrue: [ ^ self ].
	SystemAnnouncer uniqueInstance weak
		when: MCVersionLoaderStarted send: #loadStarted: to: self;
		when: MCVersionLoaderStopped send: #loadStopped: to: self.
	monticelloAnnouncements := true