accessing
announcer

	^ announcer ifNil: [ announcer := RGEnvironmentAnnouncer new ]