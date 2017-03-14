building
debuggerStructureIn: browser
	
	browser
		row: #stack;
		row: [ :row |
			row 
				column: #code;
				column: #stream ];
		row: #inspector.