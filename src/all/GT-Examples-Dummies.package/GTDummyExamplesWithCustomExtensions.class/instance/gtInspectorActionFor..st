extensions
gtInspectorActionFor: anExample
	^ GLMGenericAction new
		action: [ anExample inspect ];
		icon: GLMUIThemeExtraIcons glamorousInspect;
		title: 'Custom Inspect'