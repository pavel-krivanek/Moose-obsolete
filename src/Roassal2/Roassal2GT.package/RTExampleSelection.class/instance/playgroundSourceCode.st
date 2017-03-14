public
playgroundSourceCode 
	" this is really ugly - we would like to perfectly preserve the original format including comments BUT with pragmas stripped - is there a better way ? original code below "
	^ self method parseTree body formattedCodeWithMaxLineLength: 999
	"
	| sourceCode firstLine sourceCodeWithoutFirstLine |
	sourceCode := self method sourceCode.
	firstLine := sourceCode lines first.
	sourceCodeWithoutFirstLine := sourceCode copyFrom: firstLine size + 1 to: sourceCode size.
	^ sourceCodeWithoutFirstLine 
	"