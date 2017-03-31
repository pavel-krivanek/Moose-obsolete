accessing
sourceIn: a
	a text
		title: 'Source';
		useExplicitNotNil;
		when: [ :category :class :selector | class notNil and: [ selector notNil ] ];
		display: [ :category :class :selector | class sourceCodeAt: selector ifAbsent: [ String new ] ].
	a text
		title: 'Source';
		useExplicitNotNil;
		when: [ :category :class :selector | class notNil and: [ selector isNil ] ];
		display: [ :category :class :selector | class definition ].
	^ self complexityIn: a