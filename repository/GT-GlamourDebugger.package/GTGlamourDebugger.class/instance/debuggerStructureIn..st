building
debuggerStructureIn: browser

	browser
			row: [ :row | 
						row
							column: [ :c |
								c
									row: #stack;
									row: #code ];
							column: #browser ] span: 4;
			row: #inspector span: 3.