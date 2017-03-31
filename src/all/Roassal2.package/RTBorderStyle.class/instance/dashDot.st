styles
dashDot
"
Here is an example of use

v := RTView new.

strings := #('Hello' 'World' 'Bonjour').

label := RTLabel new.
box := RTBox new.
box color: Color transparent.
box borderStyle dash.
box borderColor: Color red.
composite := RTCompositeShape new.
composite add: box.
composite add: label.
composite allOfSameSizeWithPadding.
es := composite elementsOn: strings.

v addAll: es.
es @ RTDraggable.
RTHorizontalLineLayout on: es.
v
"
	self style: #(6 3 1 3)