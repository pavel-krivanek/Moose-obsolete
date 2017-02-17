sources
exampleRTCache
	<gtExample> 
	<noTest>
"This example shows a lot elements and draw it in a fast way"
| b cache |

(TRPlatform current dialogConfirm: 'This example takes a long time to load, execute?')
	ifFalse: [ ^ self ].
b := RTMondrianExample new exampleBezier.
b build.
cache := RTCache new.
cache cacheView: b view.
b view @ RTDraggableView.
^ b view