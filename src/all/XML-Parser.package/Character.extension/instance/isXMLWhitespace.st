*XML-Parser
isXMLWhitespace
	"a temp is used because Character in newer SpurVM images
	has no 'value' inst var"
	| tempValue |

	(tempValue := self asciiValue) == 32 "space"
		ifTrue: [^ true].
	tempValue == 10 "line feed"
		ifTrue: [^ true].
	tempValue == 9 "tab"
		ifTrue: [^ true].
	tempValue == 13 "carriage return"
		ifTrue: [^ true].
	^ tempValue == 12. "form feed"