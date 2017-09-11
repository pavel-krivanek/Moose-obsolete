importing
bundleOrder
"

b := Registry bundleNamed: 'Roassal2'.
list := b containedItems.
arr := #('Roassal2' 'Roassal2-Core' 'Roassal2-Trachel-Core' 'Roassal2-Builder-Common' 'Roassal2-Builder-Menu' 'Roassal2-Interactions' 'Roassal2-Utility' 'Roassal2-Shapes' 'Roassal2-Builder-Grapher-Core' 'Roassal2-Trachel-Shapes' 'Roassal2-Trachel-Events' 'Roassal2-Animation' 'Roassal2-Selection' 'Roassal2-Experimental' 'Roassal2-Pharo' 'Roassal2-Trachel-Viva' 'Roassal2-Builder-DSM' 'Roassal2-Trachel-Core-Theme' 'Roassal2-Extentions' 'Roassal2-Visualworks' 'Roassal2-Builder-StructureMatrix').

arr doWithIndex: [:n :i | | r |
	r := list select: [ :d | d name = n ].
	r size = 1 ifFalse: [ self halt].
	list remove: r first.
	list add: r first beforeIndex: i.
	].
b containedItems: list.

b := Registry bundleNamed: 'Roassal2-Tests'.
list := b containedItems.
arr2 := #('Roassal2-Core-Tests' 'Roassal2-Trachel-Tests' 'Roassal2-AttachPoint-Tests').
arr2 doWithIndex: [:n :i | | r |
	r := list select: [ :d | d name = n ].
	r size = 1 ifFalse: [ self halt].
	list remove: r first.
	list add: r first beforeIndex: i.
	].
b containedItems: list.

b := Registry bundleNamed: 'Roassal2-Examples'.
list := b containedItems.
r := list select: [:d | d name = 'Roassal2-Examples-Extentions'].
list remove: r first.
list add: r first.
b containedItems: list.

"