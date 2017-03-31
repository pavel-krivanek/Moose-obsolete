class initialization
initialize
	"self initialize"

	"stored in class vars for faster access"
	CRCharacter := Character cr.
	LFCharacter := Character lf.

	"a null stream that is already #atEnd and can safely be sent
	#close repeatedly and #atEnd after"
	NullReadStream := XMLNullReadStream new.