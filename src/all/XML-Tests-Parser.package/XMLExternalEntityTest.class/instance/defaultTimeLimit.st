accessing
defaultTimeLimit
	"this is needed for Pharo5+ to prevent it from timing out
	the long-running HTTP tests when skipping is disabled"
	^ self defaultTimeout seconds