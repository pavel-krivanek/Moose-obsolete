text entry control
updatePackagesListByRemoving: aPackageName

	| tmpPackagesList |
	tmpPackagesList := self initialList.
	tmpPackagesList remove: aPackageName .
	self initialList: tmpPackagesList.
					