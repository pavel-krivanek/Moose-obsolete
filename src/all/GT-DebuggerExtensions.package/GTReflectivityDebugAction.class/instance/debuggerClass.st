accessing
debuggerClass
	"I return the debugger class that this action will open when 
	one of its breakpoints is reached. Subclasses should override
	me if they need to open a specific debugger."
	^ Smalltalk tools debugger