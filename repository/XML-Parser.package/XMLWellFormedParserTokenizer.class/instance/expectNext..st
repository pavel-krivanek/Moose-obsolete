tokenizing - expecting
expectNext: aCharacter
	| nextChar |

	"use #= for pre-SpurVM compatibility where wide chars aren't #=="
	(nextChar := streamReader next) = aCharacter
		ifFalse: [
			self
				errorExpectedLiteral: aCharacter
				butGot: nextChar].
	^ nextChar.