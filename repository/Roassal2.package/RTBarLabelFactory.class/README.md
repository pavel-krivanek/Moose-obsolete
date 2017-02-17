Useful to provide an object with a configuration when creating label for bars.

For example:

b := RTGrapher new.
d := RTData new.
d points: (Collection withAllSubclasses copyFrom: 1 to: 20).
d y: #numberOfMethods.
d barChartUsing: (RTBarLabelFactory new label: #name; fontSize: 7).
b add: d.
b axisX noLabel; noTick.
b