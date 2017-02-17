private
suspendAllAnnouncementsDuring: aBlock
	| currentAnnouncer |	
	currentAnnouncer := self announcer.
	[ 	self announcer: Announcer new.
		aBlock value ]
			ensure: [ self announcer: currentAnnouncer ]