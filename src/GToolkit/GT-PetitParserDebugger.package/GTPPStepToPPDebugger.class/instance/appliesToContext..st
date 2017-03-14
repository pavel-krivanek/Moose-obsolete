testing
appliesToContext: aContext
	self flag: 'A better mechanism for determining if an action is active or not is needed.'.
	
	^ self debugger class ~= self debuggerClass