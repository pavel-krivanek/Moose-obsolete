private
stopMonticelloAnnouncements
	SystemAnnouncer uniqueInstance
		unsubscribe: MCVersionLoaderStarted thoroughlyFor: self;
		unsubscribe: MCVersionLoaderStopped thoroughlyFor: self.
	monticelloAnnouncements := false