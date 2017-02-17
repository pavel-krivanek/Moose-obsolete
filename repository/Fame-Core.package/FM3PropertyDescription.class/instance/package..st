accessing
package: newPackage
	
	package := FMMultivalueLink on: self
					update: #extensions
					from: self package
					to: newPackage