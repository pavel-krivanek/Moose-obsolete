building
layout
	browser
		column: #packages;
		column: #classes;
		column: [:c | c row: [:r | r column: #methods; column: #instVars]; row: #details] span: 3.