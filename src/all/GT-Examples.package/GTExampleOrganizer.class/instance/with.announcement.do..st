private
with: aClass announcement: announcement do: aBlock
	| wrappedAnnouncement |
	wrappedAnnouncement := aClass new
		announcement: announcement;
		yourself.
	aBlock value: wrappedAnnouncement.
	wrappedAnnouncement isEmpty ifTrue: [ ^ self ].
	SystemAnnouncer uniqueInstance announce: wrappedAnnouncement