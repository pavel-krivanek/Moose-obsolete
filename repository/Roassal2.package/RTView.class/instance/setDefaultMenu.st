menu
setDefaultMenu
	"
	:: Void -> RTView
	var b : RTMenuBuilder
	"
	"Simply add some useful menu"
	| b |
	b := RTMenuBuilder new view: self.
	b menu: 'In' callback: [ RTZoomInMove on: self ].
	b menu: 'Out' callback: [ RTZoomOutMove on: self ].
	b menu: 'Center' callback: [ self canvas focusOnCenterScaled. self signalUpdate ].
	b menu: 'Export' submenu: 'HTML' background: Color blue trans 
		callback: [ RTHTML5Exporter interactiveExport: self ].
	b menu: 'Export' submenu: 'SVG' 
		callback: [ RTSVGExporter interactiveExportViewAsSVG: self ].
	b menu: 'Export' submenu: 'PNG' 
		callback: [ RTPNGExporter new builder: self; fileName: 'roassal.png'; exportToFile ].
	
	(Smalltalk allClasses anySatisfy: [ :c | c name == #RTPDFExporter ])
		ifTrue: [ b menu: 'Export' submenu: 'PDF' callback: [ (Smalltalk at: #RTPDFExporter) exportView: self ]. ].
	b render