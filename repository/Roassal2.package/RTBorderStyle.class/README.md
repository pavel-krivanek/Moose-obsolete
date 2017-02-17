Define the style of a border.
It is used now in RTBox.
Here is an example:

-=-=-=
v := RTView new.

box := RTBox new.
box width: 50; height: 30.
box borderStyle dot.
box borderWidth: 3.
box borderColor: Color blue.

v add: box element.
v
-=-=-=
