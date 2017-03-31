class initialization
initializeEncodingHandlerTable
	| temp |

	"use an array instead of a dictionary for speed, and use a temp
	to fully initialize it before assignment to avoid possible race
	conditions during class reinitialization"
	temp := Array new: 256.
	0 to: 255 do: [:each |
		temp
			at: each + 1
			put: (self handlerForByteValue: each)].
	EncodingHandlerTable := temp.