class initialization
initializeCharacterDigitValues
	| temp |

	"use an array instead of a dictionary for speed, and use a temp
	to fully initialize it before assignment to avoid possible race
	conditions during class reinitialization"
	temp := Array new: 255.
	#(#($0 $9 0) #($a $f 10) #($A $Z 10)) do: [:each |
		| firstDigitValue lastDigitValue baseValue |
		firstDigitValue := each first asciiValue.
		lastDigitValue := each second asciiValue.
		baseValue := each third.
		firstDigitValue
			to: lastDigitValue
			do: [:i |
				temp
					at: i
					put: i - firstDigitValue + baseValue]].
	CharacterDigitValues := temp.