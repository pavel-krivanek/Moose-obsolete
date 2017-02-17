rendering
viewNamespaces: namespaces highlighting: classesToHighlight onRaw: rawView
	
	| builder packages |
	builder := RTTreeMapBuilder new.
	packages := namespaces select: [:each | each isRoot and: [each allClasses anySatisfy: [:c | c isStub not ]]].
	builder weight: [ :el | 
		el isNamespace 
			ifFalse: [ el numberOfMethods + 1] 
			ifTrue: [ el allClasses inject: 5 into: [ :sum :x | sum + (x numberOfMethods) ] ] ].
	builder shape 
		if: [ :x | classesToHighlight includes: x ] 
		fillColor: [ Color blue muchLighter ].
	builder from: packages asOrderedCollection using: [ :p | 
		p isNamespace
			ifTrue: [ p childScopes , (p classes reject: #isStub) ]
			ifFalse: [ { } ] ].
	builder inset: 1.
	builder depthShadedBorder.
	
	builder renderIn: rawView.
	
	self addLegendOn: rawView.
	
	rawView @ RTDraggableView.
	rawView canvas when: TRResizeCanvasEvent do: [ rawView canvas focusOnCenterScaled ].
	