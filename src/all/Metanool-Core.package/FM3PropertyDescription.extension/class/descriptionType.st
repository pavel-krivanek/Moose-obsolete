*metanool-core
descriptionType
	^ MASingleOptionDescription new
		accessor: #type;
		label: 'Type';
		priority: 300;
		default: FM3 boolean;
		beRequired;
		options: [ {FM3 number .  FM3 string . FM3 boolean} ] magritteDynamicObject;
"		reference: MAClassDescription new;"
		yourself