registration
gtNextStreamUpdateActionFor: aDebugger
	<gtPPStreamDebuggingAction>
	<gtContextPPStreamDebuggingAction>
	
	^ (self forDebugger: aDebugger)
		label: 'Run to next update';
		icon: GLMUIThemeExtraIcons glamorousInto