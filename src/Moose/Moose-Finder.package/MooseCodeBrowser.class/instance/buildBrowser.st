building
buildBrowser
	browser := GLMTabulator new.
	browser title: 'Moose Code Browser'.
	self browserActions.
	self layout.
	self onPackages.
	self onClassesFromPackages.
	self onInstVarsFromClasses.
	self onMethodsFromClasses.
	self onMethodsFromInstVars.
	self onDetailsFromPackagesFromClassesFromMethods.
	browser transmit fromOutsidePort: #focusOnNamespace; to: #packages port: #selection.
	browser transmit to: #packages port: #selection; fromOutsidePort: #focusOnClass; transformed: [:class | self parentOfClass: class ].
	browser transmit to: #classes port: #selection; fromOutsidePort: #focusOnClass.
	
	browser transmit toOutsidePort: #focusOnMethod; from: #details port: #focusOnMethod; transformed: [:m | m ].
	browser transmit to: #packages port: #selection; fromOutsidePort: #focusOnMethod; transformed: [:method | self parentOfClass: method belongsTo ].
	browser transmit to: #classes port: #selection; fromOutsidePort: #focusOnMethod; transformed: [:method | method belongsTo ].
	browser transmit to: #methods port: #selection; fromOutsidePort: #focusOnMethod; transformed: [:method | method ]