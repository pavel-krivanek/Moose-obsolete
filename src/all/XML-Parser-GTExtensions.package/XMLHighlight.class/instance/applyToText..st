highlighting
applyToText: aText
	| attributeStart attributeEnd |

	"must be bounded between 1 and aText size to avoid errors if the text
	being highlighted was truncated by printString/asString"
	attributeStart := self start ifNil: [1].
	attributeEnd := (self end ifNil: [aText size]) min: aText size.
	attributeStart <= attributeEnd
		ifTrue: [
			aText
				addAttribute: self color
				from: attributeStart
				to: attributeEnd].