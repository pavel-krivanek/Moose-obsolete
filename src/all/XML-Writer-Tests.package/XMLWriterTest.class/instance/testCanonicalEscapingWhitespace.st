tests
testCanonicalEscapingWhitespace
	| whitespace writer tag |

	"Attributes are changed by replacing 'the whitespace characters
	#x9, #xA, and #xD, with character references...'

	PCDATA is changed so 'all #xD characters are replaced by &#xD...'"
	whitespace :=
		String
			with: 16r9 asCharacter "tab"
			with: 16rA asCharacter "lf"
			with: 16rD asCharacter "cr"
			with: 16r20 asCharacter. "space"
	(writer := XMLWriter new)
		isCanonical: true.
	(tag := writer tag: 'canonical')
		attributeAt: 'whitespace'
		put: whitespace.
	tag with: whitespace.
	self assert:
		writer contents =
			('<canonical whitespace="&#x9;&#xA;&#xD;{4}">{1}{2}&#xD;{4}</canonical>'
				format: whitespace).