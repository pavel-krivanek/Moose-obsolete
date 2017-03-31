building
scriptIn: a
	^ a pharoScript
		title: 'Script';
		variableBindings: [ :bindings | 
					| col |
					col := OrderedCollection withAll: bindings.
					col addAll: self defaultScriptBindings.
					col ];
		with: [:p | self defaultScriptDisplayIn: p ];
		populate: #selection
			icon: GLMUIThemeExtraIcons glamorousPlay
			on: $s
			entitled: 'Generate'
			with: [ :text | text text ]
	";	act: [:text | text text ] icon: GLMUIThemeExtraIcons glamorousAccept entitled: 'Install'"