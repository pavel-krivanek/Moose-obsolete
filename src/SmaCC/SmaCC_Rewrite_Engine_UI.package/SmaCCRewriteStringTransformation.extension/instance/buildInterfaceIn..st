*SmaCC_Rewrite_Engine_UI
buildInterfaceIn: aPresentation
	aPresentation text
		display: (self string ifNil: [ '' ]);
		title: 'Replacement Pattern';
		onChangeOfPort: #text act: [ :text | self string: text text asString ]