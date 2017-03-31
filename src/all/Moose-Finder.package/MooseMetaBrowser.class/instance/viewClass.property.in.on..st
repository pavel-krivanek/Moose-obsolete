private
viewClass: fm3Class property: fm3Prop in: all on: view
	| edges |
	view interaction popupText: [ :each | each fullName asString ].
	view shape rectangle
		fillColor: [ :each | each = fm3Class ifTrue: [ Color blue muchLighter ] ifFalse: [
				each implementingClass 
					ifNil: [Color lightRed]
					ifNotNil: [:aClass | aClass organization classComment isNotEmpty ifTrue: [ Color white ] ifFalse: [ Color lightRed ] ]
				] ];
		borderColor: [ :each | each = fm3Class ifTrue: [ Color blue lighter ] ifFalse: [ Color gray ] ];
		height: [ :each | each complexAttributes size * 2 + 5 ];
		width: [ :each | each primitiveAttributes size ].
	view nodes: all classes.
	edges := view edgesFrom: #superclass.
	fm3Class notNil ifTrue: [
		view shape line 
			color: Color blue muchLighter ;
			width: [:each | each = fm3Prop ifTrue: [ 3 ] ifFalse: [ 1 ] ].
		view 
			edges source: fm3Class allComplexAttributes 
			connectFrom: fm3Class 
			to: [ :attr | attr type ] ].
	view treeLayout userDefinedEdges: edges