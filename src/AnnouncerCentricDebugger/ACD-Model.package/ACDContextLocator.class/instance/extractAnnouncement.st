accessing actions
extractAnnouncement

	^ context ifNotNilDo: [:aContext| aContext tempNamed: 'anAnnouncement']