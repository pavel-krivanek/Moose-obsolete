accessing
labelConversion: aOneArgBlock
	"The argument is a one arg block taking the numerical value and returning another numerical value or a string
	
#labelConversion: can be used to move the orgin of the graph. For example:
-=-=-=-=
	values := #(  5 6 10 10 20 22 23   5 6 10 10 20 22 23  5 6 10 10 20 22 23).
    lo := values min.
    hi := values max.
    ds := RTData new.
    ds points: values.
	ds y: [ :value | value - lo ].
    ds dotShape ellipse 
        color: (Color blue alpha: 0.3).
    ds connectColor: Color blue.
    b := RTGrapher new.
    b add: ds. 
    b axisX noLabel; numberOfTicks: (values size / 10).
    b axisY numberOfTicks: 5.
    b axisY labelConversion: [ :v | v + lo ].
    ^ b
-=-=-=-=
	"
	
	
	labelConvertion := aOneArgBlock