util
cameraScale
	| camera |
	camera := self trachelCanvas camera.
	^ self saveWithScale
		ifTrue: [ camera scale asFloat ]
		ifFalse: [ camera defaultCameraScale ]