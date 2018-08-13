tests
testDirectAnnouncement

	| def announcements  |
	
	def := RGBehavior new.
	announcements := OrderedCollection new.
	def environment announcer when: ClassAdded do: [ :announcement | announcements add: announcement ].
	def announce: (ClassAdded class: def category: nil).
	
	self assert: announcements size equals: 1.
	self assert: (announcements first classAffected == def).