Add a menu entry to easily allow for selection

[[[
| v |
v := RTView new.
v addAll: (RTBox elementsOn: (Collection withAllSubclasses)).
RTGridLayout on: v elements.
v elements @ RTPopup.
v @  RTHighlightElementsInView.
]]]

[[[
| b | 
b := RTMondrian new.
b node: 4 forIt: [
	b node: 4 ].
b view @ RTHighlightElementsInView new transparent.
b
]]]			