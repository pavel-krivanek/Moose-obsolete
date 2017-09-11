building
methodCommentsIn: a
	a text
		title: 'Comment' translated;
		display: [ :fm3Class | 
			fm3Class implementingClass isNil
				ifTrue: [ '' ]
				ifFalse: [ fm3Class implementingClass comment ] ];
		useExplicitNotNil;
		when: [ :fm3Class :compiledMethod | fm3Class notNil and: [ compiledMethod isNil ] ];
		act: [ :text :fm3Class | fm3Class implementingClass ifNotNil: [ fm3Class implementingClass comment: text text ] ]
			icon: MooseIcons mooseAccept
			on: $s
			entitled: 'Accept'.
	a text
		title: 'Comment' translated;
		display: [ :fm3Class :compiledMethod | self commentOFMethod: compiledMethod ];
		act: [ :text :fm3Class :compiledMethod | self acceptComment: text text asString ofProperty: compiledMethod ]
			icon: MooseIcons mooseAccept
			on: $s
			entitled: 'Accept';
		when: [ :fm3Class :compiledMethod | compiledMethod notNil ]