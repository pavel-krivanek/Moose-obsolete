accessing actions
extractAnnouncement

	^ context ifNotNil: [:aContext| aContext tempNamed: 'anAnnouncement']