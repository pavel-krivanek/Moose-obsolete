private
buildSubmenu: aBuilder
	(lastItem := aBuilder item: #gte)
		order: 0.15;
		parent: 'Tools';
		label: 'GT Examples';
		withSeparatorAfter.