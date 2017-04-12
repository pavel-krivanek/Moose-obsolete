accessing
privateChildrenSelectors
	^ (self allDeclaredProperties
				select: [ :fm3Prop | 
					fm3Prop isChildrenProperty ]) collectAsSet: [ :prop | prop name ] 