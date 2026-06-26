import os
base = "MiniGeometricAnalysis"
extras = {}
extras['Core/Objects.lean'] = [
'structure RicciFlatMetric where metric : Metric2D; isRicciFlat : Bool',
'structure PositiveRicciMetric where metric : Metric2D; isPositiveRicci : Bool',
'structure NegativeRicciMetric where metric : Metric2D; isNegativeRicci : Bool',
'structure KahlerMetric where metric : Metric2D; isKahler : Bool',
'structure HyperKahlerMetric where metric : Metric2D; isHyperKahler : Bool',
'axiom ricciFlowSolitionTypes : True',
'axiom steadyRicciSolitions : True',
]
for path, lines in extras.items():
    with open(os.path.join(base, path), 'a', encoding='utf-8') as f:
        for line in lines: f.write(line + chr(10))
    print(path, len(open(os.path.join(base, path)).read().splitlines()))
