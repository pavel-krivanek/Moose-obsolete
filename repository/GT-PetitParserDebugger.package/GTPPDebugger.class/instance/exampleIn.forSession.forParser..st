building presentations
exampleIn: aComposite forSession: aSession forParser: parser

	aComposite text
		title: 'Example';
		useExplicitNotNil;
		display: [
			parser example.
		];
		act: [:text | text update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Generate another one'