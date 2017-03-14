accessing
previewChangesIfShiftPressed
	FMUtil default squeakDo: [
		InputEventSensor default shiftPressed
			ifTrue: [ (ChangesBrowser changes: self model changes changes) openWithSpec ]].