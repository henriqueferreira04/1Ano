function draw() {
    var container = document.getElementById("container");
    var button = document.getElementById("botao-grafico");
    if (container.style.display === "none") {
        container.style.display = "block";
        button.innerHTML = "Fechar Gráfico"
    } else {
        container.style.display = "none";
        button.innerHTML = "Abrir Gráfico"
    }
    $("#grafico").highcharts({

        chart: {
            type: 'bar'
        },
        title: {
            text: 'Desempenho na prevenção de colisão da Waymo vs NIEON'
        },
        subtitle: {
            text: 'Source: <a ' +
                'href="https://pplware.sapo.pt/motores/waymo-da-google-concluiu-que-a-conducao-autonoma-e-mais-segura-que-a-dos-humanos/"' +
                'target="_blank">pplware.sapo.pt</a>'
        },
        xAxis: {
            categories: ['Condutor Waymo', 'NIEON'],
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Percentagem(%)',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: '%'
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle',
            x: -40,
            y: 20,
            floating: true,
            borderWidth: 1,
            backgroundColor:
                Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF',
            shadow: true
        },
        credits: {
            enabled: false
        },
        series: [{
            name: 'Acidentes evitados',
            data: [75, 62.5]
        }, {
            name: 'Acidentes graves',
            data: [93, 84]
        }]
});
}
                  
function map() {
    var map = document.getElementById("map")
    var map_button = document.getElementById("map-button")
    if (map.style.display === "none") {
        map.style.display = "block";
        map_button.innerHTML = "Fechar Mapa"
    }else{
        map.style.display = "none"
        map_button.innerHTML = "Abrir Mapa"
    }
}
