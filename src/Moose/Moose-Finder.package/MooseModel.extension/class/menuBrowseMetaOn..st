*Moose-Finder
menuBrowseMetaOn: aBuilder
	<worldMenu>
	(aBuilder item: #'MetaBrowser')
		order: 100; 
		parent: #Moose;
		label: 'Meta Browser';
		action:[MooseModel browseMeta]