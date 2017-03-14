building
resultIn: composite
	composite dynamic
		title: 'Preview';
		display: [ :bindings :script | self createResultBrowserWithBindings: bindings andScript: script ];
		act: [ :dynamic | 
				dynamic cachedPresentation presentations first panes first presentations first openTree ] 
			entitled: 'View browser tree';
		act: [:dynamic | dynamic cachedPresentation presentations first panes first presentations first explore ]
			icon: GLMUIThemeExtraIcons glamorousInspect
			entitled: 'Explore';
		act: [ :dynamic | 
				dynamic cachedPresentation presentations first panes first presentations first open ] 
			icon: GLMUIThemeExtraIcons glamorousSpawn
			entitled: 'Spawn browser'