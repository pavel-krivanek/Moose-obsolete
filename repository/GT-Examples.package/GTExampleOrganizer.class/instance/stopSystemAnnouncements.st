private
stopSystemAnnouncements
	SystemAnnouncer uniqueInstance
		unsubscribe: MethodAdded thoroughlyFor: self;
		unsubscribe: MethodModified thoroughlyFor: self;
		unsubscribe: MethodRemoved thoroughlyFor: self;
		unsubscribe: ClassRemoved thoroughlyFor: self;
		unsubscribe: ClassRenamed thoroughlyFor: self;
		unsubscribe: CategoryRemoved thoroughlyFor: self.
	systemAnnouncements := false