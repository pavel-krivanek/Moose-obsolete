You can use this builder to represent a hierarchy of an object(like Collection and all subclasses). 

This builder uses cluster layout.

This builder uses all the leaf of the tree structure, and put a string representation for each object.

Also this builder can create bezier relations between each leaf node. that you can activate with mouseEnter in one node

This builders adds some interactions, like
* an interaction with beziers
	 - #useBezierlineWith: . Send nil to disable
* a slider to change the tension for each bezier shape
	- #sliderShape: .Send nil to disable
* RTRotableView
	- view: anotherView. Send another view to disable
