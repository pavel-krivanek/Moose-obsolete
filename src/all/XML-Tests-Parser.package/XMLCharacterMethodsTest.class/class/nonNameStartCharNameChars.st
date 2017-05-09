accessing
nonNameStartCharNameChars
	"These are a limited selection of values from #allNonNameStartCharNameChars,
	including the start and end of each char range (used for performance)"
	^ #($- $.
			$0 $1 $2 $3 $4 $5 $6 $7 $8 $9
			16rB7 16r0300 16r036F 16r203F 16r2040)
			collect: [:each | each asCharacter]