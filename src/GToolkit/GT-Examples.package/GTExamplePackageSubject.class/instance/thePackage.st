accessing
thePackage
	^ thePackage ifNil: [ thePackage := RPackageOrganizer default packages 
		detect: [ :each | each packageName = thePackageName ]
		ifNone: [ nil ] ]