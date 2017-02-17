exporting
exportPackages
	"
	self new exportPackages
	"
	"This code export all these packages to my workspace in order to export/import this code"
	| dirpath exporter |
	dirpath := 'C:\Users\azazael\Downloads\'.
	exporter := RoassalExporter new
		to: dirpath namespace: self namespace.
	exporter blacklist: self blacklist.
	exporter exportPackages: self packages.
		