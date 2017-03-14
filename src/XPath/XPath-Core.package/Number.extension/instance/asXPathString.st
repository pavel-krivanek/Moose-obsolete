*XPath-Core-converting
asXPathString
	"NaN is converted to the string NaN
	positive zero is converted to the string 0
	negative zero is converted to the string 0
	positive infinity is converted to the string Infinity
	negative infinity is converted to the string -Infinity"
	self isNaN
		ifTrue: [^ 'NaN'].
	self isZero
		ifTrue: [^ '0'].
	self isInfinite
		ifTrue: [
			self negative
				ifTrue: [^ '-Infinity']
				ifFalse: [^ 'Infinity']].

	"integers and floats with no fractional part must be printed as integers,
	so 1 and 1.0 are both output as '1' and -1 and -1.0 are output as '-1'"
	self fractionPart isZero
		ifTrue: [
			"#integerPart returns a float, so it can't be used"
			^ self asInteger asString]
		ifFalse: [| printedWithFixedDecimalPlaces end |
			"this portably gives a decimal, not scientific, representation
			of the number (unlike #asString or #printString:base:, which use
			scientific for some floats), but it may have redundant trailing
			zeros that the spec forbids that need to be removed"
			printedWithFixedDecimalPlaces := self printShowingDecimalPlaces: 16.
			end := printedWithFixedDecimalPlaces size.
			[end > 3
				and: [(printedWithFixedDecimalPlaces at: end) == $0
					and: [(printedWithFixedDecimalPlaces at: end - 1) ~~ $.]]]
				whileTrue: [end := end - 1].
			end < printedWithFixedDecimalPlaces size
				ifTrue: [
					"avoid #first: for portability"
					^ printedWithFixedDecimalPlaces
						copyFrom: 1
						to: end]
				ifFalse: [^ printedWithFixedDecimalPlaces]].