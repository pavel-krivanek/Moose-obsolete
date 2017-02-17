method
water
	"
		This will allow to skip over
			- Strings, 
			- Comments 
			- and blocks 
		when parsing water. This way, comments and strings cannot confuse the result.
	"

	^ comment / string / singleLineComment / block / letters / spaces / #any asParser