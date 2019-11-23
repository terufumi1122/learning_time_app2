let label1 = LABEL;

let value1-1 = 1;
let value1-1 = 2;
let value1-1 = 3;
let value1-1 = 4;
let value1-1 = 5;

let label2 = labeL;

let value2-1 = 3;
let value2-1 = 4;
let value2-1 = 6;
let value2-1 = 8;
let value2-1 = 16;


var myBarChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['data1', 'data2', 'data3', 'data4'],
      datasets: [
        {
          label: 'label1'
          data: ['value1-1', 'value1-2', 'value1-3', 'value1-4']
          borderColor: "rgba(255, 0, 0, 1)"
          backgroundColor: "rgba(0, 0, 0, 0)"
        },
        {
          label: 'label2'
          data: ['value2-1', 'value2-2', 'value2-3', 'value2-4']
          borderColor: "rgba(255, 0, 0, 1)"
          backgroundColor: "rgba(0, 0, 0, 0)"
        },
      ],
    },
    options: {
      title: {
        display: true,
        text: 'text'
      },
      scales: {
        yAxes: [{
          ticks: {
            suggesedMax: 40,
            suggestedMin: 0,
            stepSize: 10,
            callback: function(value, index, values){
              return value + 'iini'
            }
          }
        }]
      },
    }
});
