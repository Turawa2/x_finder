class Tutorial {
  String topics;
  String note;
  String note2;
  String note3;
  String note4;
  String note5;
  String note6;

  Tutorial(this.topics, this.note, this.note2, this.note3, this.note4, this.note5, this.note6);

  static List<Tutorial> generateNote() {
    return [
      Tutorial('INTRODUCTION', 'Statistics is a branch of statistics which deals with collection, presentation and analysis of numerical data, and drawing conclussions on the basis of thesame data.', '', '', '', '', '', ),
      Tutorial('GRAPH', 'Graphs are often use in presenting frequent distribution so that the shape of the distribution is easily seen.', '', '', '', '', '', ),
      Tutorial('BAR CHART', 'This is a graphical representation of data that use bars to show the relationship between different categories or group of data.', '', '', '', '', '', ),
      Tutorial('PIE CHART', 'Pie chart consist of the circle divide into sectors which are divided propotional to the respective size of item they represent in the data.', '', '', '', '', '', ),
      Tutorial('HISTOGRAM', 'A histogram is a bar graph distribution in which the bars are joined together.', '', '', '', '', '', ),
      Tutorial('FREQUENCY POLYGON', 'This is a graph against the respective class mark or mid-point of class interval of a frequency distribution of.', '', '', '', '', '', ),
      Tutorial('COMMULATIVE FREQUENCY (OGIVE)', 'This is the graph of cummulative frequency against the boundaries of a frequency distribution.', '', '', '', '', '', ),
      Tutorial('RANDOM VARIABLE', 'Random numbers mean the real numbers associated with the outcome of a random experiment.', '', '', '', '', '', ),
      Tutorial('CORRELATION', 'This is the analysis of the co-variation between two(2) or ,ore variables.', '', '', '', '', '', ),
      Tutorial('POSITIVE & NEGATIVE CORRELATION', 'This happens if the values of two variables are in thesame direction.\nPositive or direct correlation happens if the decrease in value of one variable result in an average of a corresponding decrease in the value of other variable.\nAnd is said to be negative or indirect if the value deviate in opposite direction.', '', '', '', '', '', ),
      Tutorial('LINEAR & NON-LINEAR CORRELATION', 'Corrrlation is said to be linear if the corresponding to a unit change in one variable and there is a constant change in the other variable.\n\n Corrrlation is said to be linear if the corresponding to a unit change in one variable and there is no change at constant rate.', '', '', '', '', '', ),
      Tutorial('METHOD OF STUDYING CORRELATION', 'For someone to study correlation, there are three ways to do so:\n (1) Scatter diagram.\n (2) Karl Pearsons coefficient of correlation. \n (3) Spearman rank', '', '', '', '', '', ),
      Tutorial('SCATTER DIAGRAM', 'Scatter diagram is also known as scatter plot is a type of graph that shows the relationship between two variables by plotting their values as point on  coordinate plane.', '', '', '', '', '', ),
      Tutorial('KARL PEARSONS COEFFICIENT OF CORRELATION', 'A mathematical method for measuring the intensity or magnitude of linear relationanship between two variables was suggested by karl pearsons.', '', '', '', '', '', ),
      Tutorial('SPEARMAN RANK CORRELATION', '(1) When actual rank are given.\n(2) When ranks are not given.', 'CASE 1', 'When actual rank are given: \ni. Compute d\nii. Compute d^2\niii. Obtain the submission of d^2\niv. Use fomula to get the value of P', 'CASE 2', 'When ranks are not given:\nYou convert data into ranks\nThe highest observation to the smallest observation is given rank 1,2....... and so on etc', '', ),
      Tutorial('MEAN', 'The sum of a set of values divided by the number of values.', 'E.g. The mean of the number: 1, 2, and 3 is (1 + 2 +3)/3 = 2.', '', '', '', '', ),
      Tutorial('MEDIAN', 'Median is the middle number of the population oe middle number of the distribution.', '', '', '', '', '', ),
      Tutorial('MODE', 'Mode is the number that appear most often, or number of occurance of a number that appear morethan other numbers.', '', '', '', '', '', ),
      Tutorial('GEOMETRIC MEAN', 'This is the average that imdicates a central tendency.', '', '', '', '', '', ),
      Tutorial('HARMONIC MEAN', 'Harmonic mean is calculated by dividing this root entities in the series by the reciprocal of each number in the series.', '', '', '', '', '', ),
      Tutorial('QUARTILE', 'This happens when a distribution is divided into four equal parts.\nIt is donated as Q', '', '', '', '', '', ),
      Tutorial('DECILE', 'This happens when a distribution is divided into ten equal parts.\nIt is donated as D', '', '', '', '', '', ),
      Tutorial('PERCENTILE', 'This happens when a distribution is divided into one hundred equal parts.\nIt is donated as P', '', '', '', '', '', ),
    ];
  }
}
