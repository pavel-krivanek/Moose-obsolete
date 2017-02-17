private
concernListIn: a
	^ a tree
		title: 'Index';
		display: [ :concern | concern children ];
		children: #children;
		format: [ :concern | concern status label ];
		selectionAct: [ :list | list selection class browse ] entitled: 'Browse implementation';
		selectionAct: [ :list | 
			list selection update. 
			list update ] entitled: 'Update';
		selectionAct: [ :list | list selection result inspect ] entitled: 'Inspect result'