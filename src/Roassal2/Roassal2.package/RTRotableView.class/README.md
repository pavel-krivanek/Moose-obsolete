I am an interaction that makes a view rotable using the left button and draggable using the right mouse button.

Here is an example

[[[ 
	v := RTView new.
	v @ RTRotableView.
	b := RTMondrian new.
	b view: v.
	b nodes: (1 to: 300).
	b edges connectFrom: [ :value | value // 2 ].
	b layout cluster.
	b.			
]]]