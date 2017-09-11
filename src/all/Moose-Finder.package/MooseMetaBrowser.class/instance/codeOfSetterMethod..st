building
codeOfSetterMethod: a
	a text
		title: 'Setter' translated;
		display: '';
		useExplicitNotNil;
		when: [ :aFM3Class :fm3Prop | aFM3Class isNotNil and: [ fm3Prop isNil ] ].
	a pharoMethod
		title: 'Setter' translated;
		display:
				[ :aFM3Class :fm3Prop | aFM3Class implementingClass methods detect: [ :method | method ast selector trimBoth = (fm3Prop name , ':') ] ifNone: [ nil ] ];
		smalltalkClass: [ :aFM3Class :fm3Prop | fm3Prop compiledMethod methodClass ];
		when: [ :aFM3Class :fm3Prop | fm3Prop isNotNil and: [ fm3Prop hasImplementingSelector ] ]