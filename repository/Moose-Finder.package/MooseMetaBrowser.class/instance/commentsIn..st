building
commentsIn: a
	a text
		title: 'Comment' translated;
		display: [ :fm3Class | fm3Class implementingClass isNil ifTrue: [''] ifFalse: [fm3Class implementingClass comment] ];
		useExplicitNotNil;
		when: [ :fm3Class :fm3Prop | fm3Class notNil and: [ fm3Prop isNil ]];
		act: [:text :fm3Class | fm3Class implementingClass ifNotNil: [fm3Class implementingClass comment: text text] ] 
			icon: MooseIcons mooseAccept 
			entitled: 'Accept'.
	a text
		title: 'Comment' translated;
		display: [ :fm3Class :fm3Prop | self commentOfProperty: fm3Prop ];
		when: [ :fm3Class :fm3Prop | fm3Prop notNil ]