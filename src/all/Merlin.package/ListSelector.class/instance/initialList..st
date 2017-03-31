initialize-release
initialList: aCollectionOfString
	"	enable this PackageSelector to use aCollectionOfString as initial packages list"
	initialList := aCollectionOfString asSortedCollection: [ :a :b | a < b ]