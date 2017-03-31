instance creation
fromEvent: aUserInputEvent
	^ self new
		commandKeyPressed: aUserInputEvent commandKeyPressed;
		controlKeyPressed: aUserInputEvent controlKeyPressed;
		shiftKeyPressed: aUserInputEvent shiftPressed;
		optionKeyPressed: aUserInputEvent optionKeyPressed;
		yourself