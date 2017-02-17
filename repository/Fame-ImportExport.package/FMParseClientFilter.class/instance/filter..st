accessing
filter: aCollectionOfElementNames
"set the value of filter. filter is a collection containing the names of elements that can be imported. When the method #beginElement: is invoked, if the name of the element is not in filter, nothing will be generated. In the opposite case, the work will be delegated to parserClient. "

	filter := aCollectionOfElementNames .