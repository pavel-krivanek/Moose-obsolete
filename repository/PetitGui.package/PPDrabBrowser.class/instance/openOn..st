public
openOn: aClass
	rootClass := aClass.
	browser := GLMTabulator new.
	self browseOn: browser.
	browser openOn: self rootModel