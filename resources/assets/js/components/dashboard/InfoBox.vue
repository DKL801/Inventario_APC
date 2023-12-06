<template>
  <div class="wrap">
    <div class="row" v-if="isLoading">
      <h1 style="text-align:center">Cargando......</h1>
    </div>

    <div class="row clearfix" v-if="!isLoading">
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-teal hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">contacts</i>
          </div>
          <div class="content">
            <div class="text">Clientes</div>
            <div class="number">{{ info.total_customer }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-orange hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">people</i>
          </div>
          <div class="content">
            <div class="text">Proveedores</div>
            <div class="number">{{ info.total_vendor }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-deep-purple hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">category</i>
          </div>
          <div class="content">
            <div class="text">Productos</div>
            <div class="number">{{ info.total_product }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-blue-grey hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">receipt</i>
          </div>
          <div class="content">
            <div class="text">Facturas</div>
            <div class="number">{{ info.total_invoice }}</div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-indigo hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">local_mall</i>
          </div>
          <div class="content">
            <div class="text">Existencia total</div>
            <div class="number">
              <small>{{ info.total_quantity }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-pink hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">local_shipping</i>
          </div>
          <div class="content">
            <div class="text">Existencia vendida</div>
            <div class="number">
              <small>{{ info.total_sold_quantity }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-blue hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">bar_chart</i>
          </div>
          <div class="content">
            <div class="text">Existencia actual</div>
            <div class="number">
              <small>{{ info.total_current_quantity }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-deep-orange hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">payment</i>
          </div>
          <div class="content">
            <div class="text">Importe vendido</div>
            <div class="number">
              <small>$ {{ info.total_sold_amount }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-green hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">attach_money</i>
          </div>
          <div class="content">
            <div class="text">Importe pagado</div>
            <div class="number">
              <small>$ {{ info.total_paid_amount }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-red hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">money_off</i>
          </div>
          <div class="content">
            <div class="text">Importe restante</div>
            <div class="number">
              <small>$ {{ info.total_outstanding }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-brown hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">payments</i>
          </div>
          <div class="content">
            <div class="text">Beneficio bruto</div>
            <div class="number">
              <small>$ {{ info.total_gross_profit }}</small>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-cyan hover-zoom-effect">
          <div class="icon">
            <i class="material-icons">money</i>
          </div>
          <div class="content">
            <div class="text">Beneficio neto</div>
            <div class="number">
              <small>$ {{ info.total_net_profit }}</small>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container my-3">
  <div class="row">
    <div class="col-md-7 ml-md-0">
      <div class="panel panel-default">
        <div class="panel-heading text-center">
          <h2>Reporte de Ventas</h2>
        </div>
        <div class="panel-body">
          <div class="d-flex justify-content-center align-items-center">
            <canvas id="idGrafica" class="grafica"></canvas>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>



 
  </div>
</template>

<script>
import { EventBus } from "../../vue-asset";
import mixin from "../../mixin";

export default {
  data() {
    return {
      info: {},
      isLoading: true,
      salesData: {}
    };
  },

  created() {
    const script = document.createElement("script");
    script.src = "https://cdn.jsdelivr.net/npm/chart.js";
    script.async = true;
    document.head.appendChild(script);

    script.onload = () => {
      this.getData();
    };
  },

  methods: {
    getData() {
      axios.get('info-box').then((response) => {
        this.info = response.data;
        this.isLoading = false;

        this.salesData = {
        labels: response.data.additional_data.map(item => item.fecha),
        datasets: [
          {
            label: "Ingresos monetarios",
            data: response.data.additional_data.map(item => item.tPrecio),
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
          },
          {
            label: "Productos Vendidos",
            data: response.data.additional_data.map(item => item.tVendidos),
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgba(255, 99, 132, 1)',
            borderWidth: 1
          }
        ]
      };

      this.renderChart();
    });
  },

    renderChart() {
      const ctx = document.getElementById("idGrafica").getContext("2d");

      new Chart(ctx, {
        type: "bar",
        data: this.salesData,
        options: {
          responsive: true,
          scales: {
            x: {
              beginAtZero: true
            },
            y: {
              beginAtZero: true
            }
          }
        }
      });
    }
  }
};
</script>