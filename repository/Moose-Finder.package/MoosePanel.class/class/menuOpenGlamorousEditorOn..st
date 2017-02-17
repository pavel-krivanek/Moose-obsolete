menu
menuOpenGlamorousEditorOn: aBuilder
	<worldMenu>
	(aBuilder item: #'GlamourousEditor')
		order: 11; 
		parent: #Moose;
		label: GLMEditor new defaultTitle;
		action: [GLMEditor open]