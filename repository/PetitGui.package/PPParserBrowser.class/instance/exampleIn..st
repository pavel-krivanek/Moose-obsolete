private building
exampleIn: composite
	composite text
		title: 'Example';
		useExplicitNotNil;
		display: [ :class :productionSelector | (self production: productionSelector from: class) example ];
		act: [:text | text update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Generate another one'