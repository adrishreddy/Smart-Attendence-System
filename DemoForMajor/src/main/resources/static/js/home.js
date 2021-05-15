google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Category', 'No of students'],
  ['Absentees', 7],
  ['Presentees', 1],
  
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Attendance today', 'width':650, 'height':500 ,is3D: true,};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}