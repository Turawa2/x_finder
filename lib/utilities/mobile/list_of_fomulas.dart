
class FomulasList {
  String topics;
  String mainFomula;
  String explain1;
  String explain2;
  String explain3;
  String explain4;
  String explain5;
  double height;

  FomulasList(this.topics, this.mainFomula, this.explain1, this.explain2, this.explain3,
      this.explain4, this.explain5, this.height);

  static List<FomulasList> generateFomula() {
    return [
      FomulasList(
        'Decile',
        'images/fDecile.jpg',
        'L1 = Lower limit of the decile class',
        'N = The total frequency',
        'F = C.F before the decile class',
        'C = Class size',
        'f = frequency of the decile class',
        0
      ),
       
        FomulasList(
        'Geometric mean',
        'images/geometricMean.jpg',
        'n = Total data given',
        '',
        'x = The data(s) given',
        '',
        '',
        0
      ),
       FomulasList(
        'Grouped mean',
        'images/groupMean.jpg',
        'f = Frequency',
        '',
        'x = The data(s) given',
        '',
        '',
        0
      ),
       FomulasList(
        'Harmonic mean',
        'images/harmonicMean.jpg',
        'n = Total data given',
        '',
        'x = The data(s) given',
        '',
        '',
        0
      ),

      
       FomulasList(
        'Karl pearson',
        'images/karl.jpg',
        'dx = Change in x',
        '',
        'dy = Change in y',
        '',
        '',
        0
      ),

       FomulasList(
        'Median',
        'images/fMedian.jpg',
        'L = Lower limit of the median class',
        'N = The total frequency',
        'F = C.F before the median class',
        'C = Class size',
        'f = frequency of the median class',
        0
      ),
       FomulasList(
        'Mode',
        'images/fMode.jpg',
        'L1 = Lower limit of the modal class',
        'f = Frequency of the modal class',
        'Fa = Frequency before the modal class',
        'Fb = Frequency after the modal class',
        'L2 = Upper limit of modal class',
        0
      ),
       FomulasList(
        'Percentile',
        'images/fPercentile.jpg',
        'L1 = Lower limit of the percentile class',
        'N = The total frequency',
        'F = C.F before the percentile class',
        'C = Class size',
        'f = frequency of the percentile class',
        0
      ),
       FomulasList(
        'Quartile',
        'images/fQuartile.jpg',
        'L1 = Lower limit of the quartile class',
        'N = The total frequency',
        'F = C.F before the quartile class',
        'C = Class size',
        'f = frequency of the quartile class',
        0
      ),
      
       FomulasList(
        'Spearman rank',
        'images/spearman.jpg',
        'd = Given ranks',
        '',
        'n = Total number of ranks',
        '',
        '',
        0
      ),
       FomulasList(
        'Ungroup mean',
        'images/ungroupMean.jpg',
        'x = Given data(s)',
        '',
        'n = Total number of given data',
        '',
        '',
        0
      ),
       
    ];
  }
}
