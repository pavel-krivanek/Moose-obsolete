instance creation
on: aCollectionOfItems inGroupboxNamed: aString defaultSelected: anIndex
	"the drop list will be put into a groupbox named aString. by default it is put into a groupbox named 'Choose an item'"
	^ self new
		initialize;
		list: aCollectionOfItems
			inGroupboxNamed: aString ; defaultIndexSelected: anIndex ;  yourself