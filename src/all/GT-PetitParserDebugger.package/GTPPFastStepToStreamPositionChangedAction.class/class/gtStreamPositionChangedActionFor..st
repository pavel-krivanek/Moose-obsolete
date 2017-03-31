registration
gtStreamPositionChangedActionFor: aDebugger
	"<gtPPStreamDebuggingAction>
	<gtContextPPStreamDebuggingAction>"
	
	^ (self forDebugger: aDebugger)
		label: 'Run to next update (fast)';
		icon: GLMUIThemeExtraIcons glamorousInto