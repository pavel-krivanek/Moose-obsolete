replacing
replaceFrom: aStart to: aStop with: aReplacement
	"works like copyReplaceFrom:to:with: and
	can be used to insert, delete, and replace"
	| start stop |

	start := (aStart max: 1) min: self size + 1.
	stop := (aStop max: start - 1) min: self size.
	self string:
		(self string
			copyReplaceFrom: start
			to: stop
			with: aReplacement asString)