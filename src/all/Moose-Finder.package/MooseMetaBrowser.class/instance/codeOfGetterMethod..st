building
codeOfGetterMethod: a
	a text
		title: 'Getter' translated;
		display: '';
		useExplicitNotNil;
		when: [ :aFM3Class :fm3Prop | aFM3Class isNotNil and: [ fm3Prop isNil ] ].
	a pharoMethod
		title: 'Getter' translated;
		display: [ :aFM3Class :fm3Prop | self codeOfProperty: fm3Prop ];
		smalltalkClass: [ :aFM3Class :fm3Prop | fm3Prop compiledMethod methodClass ];
		when: [ :aFM3Class :fm3Prop | fm3Prop isNotNil and: [ fm3Prop hasImplementingSelector ] ]