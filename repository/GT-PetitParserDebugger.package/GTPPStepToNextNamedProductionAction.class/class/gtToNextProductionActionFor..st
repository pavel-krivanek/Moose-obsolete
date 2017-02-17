registration
gtToNextProductionActionFor: aDebugger
	<gtPPDebuggingAction>
	<gtContextPPDebuggingAction>

	^ (self forDebugger: aDebugger)
		production: nil;
		label: 'Next production';
		category: 'Next parser invocation';
		icon: GLMUIThemeExtraIcons glamourousNextProduction;
		order: 195