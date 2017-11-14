private
expectNext: aCharacter
	| nextChar |

	"use #= for pre-SpurVM compatibility where wide chars aren't #=="
	(nextChar := readStream next) = aCharacter
		ifFalse: [
			self
				errorExpectedLiteral: aCharacter
				butGot: nextChar].
	^ aCharacter.