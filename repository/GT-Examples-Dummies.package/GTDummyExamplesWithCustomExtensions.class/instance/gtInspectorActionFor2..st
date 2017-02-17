extensions
gtInspectorActionFor2: aGTExample
	^ GLMGenericAction new
		action: [ aGTExample inspect ];
		icon: GLMUIThemeExtraIcons glamorousInspect;
		title: 'Custom Inspect 2'