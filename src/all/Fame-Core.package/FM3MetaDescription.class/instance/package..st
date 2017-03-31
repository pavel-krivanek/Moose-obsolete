accessing
package: newPackage
	
	package := FMMultivalueLink on: self
					update: #classes
					from: self package
					to: newPackage