forms
descriptionGeneralizationSet
	<magritteDescription>
	^ MAToManyRelationDescription new
		initializer: [ :desc | 
			desc
				controller: self;
				set: OPUMLGeneralizationSet new ];
		display: [ :desc | 
			String
				streamContents: [ :stream | 
					stream
						<< 'GeneralizationSet {''';
						<< (desc set name ifNil: [ '' ]);
						<< ''', '.
					desc set isCovering
						ifTrue: [ stream << 'complete, ' ]
						ifFalse: [ stream << 'incomplete, ' ].
					desc set isDisjoint
						ifTrue: [ stream << 'disjoint, ' ]
						ifFalse: [ stream << 'overlapping, ' ].
					stream << ('(' , desc set generalizations size asString , ')}') ] ];
		accessor:
			(MAPluggableAccessor
				read: [ :me | 
					me model generalizationSets
						collect: [ :each | 
							OPUmlGeneralizationSetDescriptions new
								controller: self;
								set: each ] ]
				write: [ :me :newValue | 
					me model generalizationSets: (newValue collect: #set).
					diagramElement ifNotNil: [ self refreshFigure ] ]);
		classes: {OPUmlGeneralizationSetDescriptions};
		label: 'Generalization Sets';
		priority: 5;
		yourself