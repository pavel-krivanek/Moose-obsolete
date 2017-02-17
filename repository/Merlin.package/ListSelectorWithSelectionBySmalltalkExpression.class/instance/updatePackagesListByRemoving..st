text entry control
updatePackagesListByRemoving: aPackageName

	| tmpPackagesList |
	tmpPackagesList := self list.
	tmpPackagesList remove: aPackageName .
	self list: tmpPackagesList.
					