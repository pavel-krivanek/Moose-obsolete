accessing
package: aPackage
	"Specifies the owning Package of this Type, if any."
	package := OPUMLToOneLink
		on: self identity
		update: #ownedTypes
		from: package
		to: aPackage