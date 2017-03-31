building
metamodelMapIn: a
	| b |
	a roassal2
		title: 'Map' translated;
		initializeView: [ RTView new @ RTDraggableView ];
		painting: [ :view :all :fm3Class :fm3Prop | 
			b := RTMondrian new.
			b view: view.
			self viewClass: fm3Class property: fm3Prop in: all on: b.
			b build.
			
			self addClassLegendOn: view ];
		useExplicitNotNil;
		when: [ :fm3Class | fm3Class notNil ]