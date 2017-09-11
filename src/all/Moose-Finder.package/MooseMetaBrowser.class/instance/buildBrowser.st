building
buildBrowser
	browser := GLMTabulator new.
	browser title: 'Moose Meta Browser' translated.
	browser
		column: [ :c | 
			c
				row: #explorer;
				row: #details ]
			span: 3;
		column: #info.
	self browserActions.
	browser transmit
		fromOutsidePort: #entity;
		to: #explorer port: #metarepository.
	browser transmit
		to: #explorer;
		andShow: [ :a | a custom: MooseMetaExplorer new browser noTitle ].
	browser transmit
		to: #details;
		fromOutsidePort: #entity;
		from: #explorer port: #selectedEntity;
		from: #explorer port: #selectedAttribute;
		andShow: [ :a | self metamodelMapIn: a ].
	browser transmit
		to: #info;
		from: #explorer port: #selectedEntity;
		from: #explorer port: #selectedAttribute;
		when: [ :x :p | p isNotNil and: [ p class = FM3PropertyDescription ] ];
		andShow: [ :a | 
			self codeOfGetterMethod: a.
			self codeOfSetterMethod: a.
			self commentsIn: a ].
	browser transmit
		to: #info;
		from: #explorer port: #selectedEntity;
		from: #explorer port: #selectedAttribute;
		when: [ :x :p | p isNotNil and: [ p class = CompiledMethod ] ];
		andShow: [ :a | 
			self codeIn: a.
			self methodCommentsIn: a ].
	browser transmit
		to: #explorer port: #entityToSelect;
		from: #details;
		when: [ :x | x class = FM3MetaDescription ].
	browser transmit
		to: #explorer port: #entityToSelect;
		fromOutsidePort: #entityToSelect.
	^ browser