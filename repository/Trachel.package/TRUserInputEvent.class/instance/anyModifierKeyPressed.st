accessing
anyModifierKeyPressed
	"Answer true if command, option/alt or control key on the keyboard was being held down when this event occurred. Ignores shift key."

	^ self commandKeyPressed or: [ self optionKeyPressed or: [ self controlKeyPressed ] ]