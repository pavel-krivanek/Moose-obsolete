combining
/ aURIOrURIString
	"Returns the argument URI if it is absolute or the argument resolved in the
	context of the receiver if it is relative, to do relative path resolution
	or replace hosts, query strings, and other components."

	^ self combinedWith: aURIOrURIString