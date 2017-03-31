actions
clean
	"Remove all the elements of the view. It does not remove elements that are directly added to the canvas however"

	"Iterate over the original collections until they are empty. It's done this way because removal of one element can remove another one via TRRemoveCallback (e.g. RTViewTest>>testCleaningViewWithCallback)."

	[ self elements isNotEmpty ] whileTrue: [ self elements anyOne remove ].
	[ self edges isNotEmpty ] whileTrue: [ self edges anyOne remove ]