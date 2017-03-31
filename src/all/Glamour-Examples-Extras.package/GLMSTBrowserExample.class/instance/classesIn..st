accessing
classesIn: a
	a list
		title: 'Instance';
		display: [ :environment :category | (environment classes reject: [ :each | each isMeta ]) select: [ :each | each category = category ] ];
		sorted: [ :a1 :b | a1 name < b name ];
		format: [ :class | class name ].
	^ a list
		title: 'Class';
		display: [ :environment :category | (environment classes select: [ :each | each isMeta ]) select: [ :each | each theNonMetaClass category = category ] ];
		sorted: [ :a1 :b | a1 name < b name ];
		format: [ :class | class theNonMetaClass name ]