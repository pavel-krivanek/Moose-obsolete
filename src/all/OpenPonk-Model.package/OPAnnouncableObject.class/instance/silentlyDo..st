announcement registration
silentlyDo: aBlock
	| oldAnnouncer |
	oldAnnouncer := announcer.
	announcer := Announcer new.
	aBlock value.
	announcer := oldAnnouncer