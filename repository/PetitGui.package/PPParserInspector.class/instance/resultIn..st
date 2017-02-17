private building
resultIn: composite
	(composite text)
		title: 'Result';
		display: [ :result :sample :stream :parser | result ];
		act: [ :text :result :sample :stream :parser | result inspect ] icon: GLMUIThemeExtraIcons glamorousInspect entitled: 'Inspect';
		act: [ :text :result :sample :stream :parser | result explore ] icon: GLMUIThemeExtraIcons glamorousSearch entitled: 'Explore'.