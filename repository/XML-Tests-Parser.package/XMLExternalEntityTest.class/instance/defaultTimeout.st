accessing
defaultTimeout
	"this is needed for Squeak to prevent it from timing out
	the long-running HTTP tests when skipping is disabled"
	^ 60 * 10