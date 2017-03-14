private
buildSubmenu: aBuilder
	(lastItem := aBuilder item: #gte)
		order: self submenuOrder;
		label: 'GT Examples';
		withSeparatorAfter.