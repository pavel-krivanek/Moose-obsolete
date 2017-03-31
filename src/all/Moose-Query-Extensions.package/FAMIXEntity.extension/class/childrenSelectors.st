*Moose-Query-Extensions
childrenSelectors
	childrenAccessors
		ifNil: [ childrenAccessors := (self allDeclaredProperties
				select: [ :fm3Prop | 
					fm3Prop isChildrenProperty ]) collectAsSet: [ :prop | prop name ] ].
	^ childrenAccessors