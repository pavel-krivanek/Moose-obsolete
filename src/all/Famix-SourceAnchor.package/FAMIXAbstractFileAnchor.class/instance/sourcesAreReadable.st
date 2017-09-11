testing
sourcesAreReadable
	| file |
	^ (file := self fileReference) exists and: [ file size > 0 ]