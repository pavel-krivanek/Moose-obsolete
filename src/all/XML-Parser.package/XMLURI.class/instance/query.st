accessing
query
	"Returns a temporary OrderedCollection of percent/plus-decoded
	query string key=value pairs"

	^ self rawQuery collect: [:each |
		(self percentAndPlusDecode: each key) ->
			(self percentAndPlusDecode: each value)]