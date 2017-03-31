running
containsCustomExtension: aClass

	^ aClass methods anySatisfy: [:aMethod | 
		aMethod pragmas anySatisfy: [ :aPragma |
			aPragma keyword = #gtInspectorPresentationOrder: or: [
				aPragma keyword = #spotterOrder: ]]]