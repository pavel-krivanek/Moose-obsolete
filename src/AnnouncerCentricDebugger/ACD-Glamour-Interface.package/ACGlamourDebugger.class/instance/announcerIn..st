building presentations
announcerIn: composite

	composite custom:
			(GTInspector new first
				fixedSizePanes: 1; "Only one"
				noTitle;
				noActions;
				showFirst: [ :a | a custom: (ACDAnnouncerBrowser new debugger: self) ];
				yourself)
