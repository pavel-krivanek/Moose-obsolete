=-=-=-=-
| b ds deco labels |
b := RTGrapher new.

ds := RTData new.
ds points: #(2 3 4 5 6).
b add: ds.

deco := RTVerticalAllValuesDecorator new.
b addDecorator: deco.

b axisX noTick; noLabel.
b axisY noTick; noLabel.
b 
=-=-=-=-