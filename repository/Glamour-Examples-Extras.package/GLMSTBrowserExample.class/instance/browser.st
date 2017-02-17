accessing
browser
	"
	self new browser openOn: (BrowserEnvironment new forPackageNames: #('Glamour'))
	"

	| browser |
	browser := GLMTabulator new.
	browser
		row: [ :row | 
			row
				column: #category;
				column: #class;
				column: #protocol;
				column: #selector ].
	browser row: #source.	" categories "
	browser transmit
		to: #category;
		andShow: [ :a | self categoriesIn: a ].
	browser transmit
		to: #class;
		from: #outer port: #entity;
		from: #category;
		andShow: [ :a | self classesIn: a ].
	browser transmit
		to: #protocol;
		from: #outer port: #entity;
		from: #class;
		andShow: [ :a | self protocolsIn: a ].
	browser transmit
		to: #selector;
		from: #outer port: #entity;
		from: #class;
		from: #protocol;
		andShow: [ :a | self methodsIn: a ].
	browser transmit
		to: #source;
		from: #category;
		from: #class;
		from: #selector;
		andShow: [ :a | self sourceIn: a ].
	^ browser