*GT-DebuggerExtensions
handleMoldableHalt: anException

	"See UIManager>>unhandledErrorDefaultAction:"
		
	Smalltalk snapshot: false andQuit: true.