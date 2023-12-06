<template>
	<div class="row">

		<div class="col-md-4">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="type" required="" v-model="report_type" v-select="report_type">
						<option :value="''">Elija el tipo de reporte *</option>
						<option :value="'stock'">Reporte de Stock</option>
						<option :value="'sell'">Reporte de venta</option>
						<option :value="'profit'">Reporte de ganancia</option>
						<option :value="'due'">Reporte de deuda</option>
						<option :value="'invoice'">Reporte de factura</option>
					</select>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="input-group">
				<div class="form-line">
					<vuejs-datepicker :required="true" :placeholder="'Fecha comienzo *'" :name="'start_date'"
						:input-class="'form-control'"></vuejs-datepicker>
				</div>
			</div>
		</div>

		<div class="col-md-4">
			<div class="input-group">
				<div class="form-line">
					<vuejs-datepicker :required="true" :placeholder="'Fecha fin *'" :name="'end_date'"
						:input-class="'form-control'"></vuejs-datepicker>
				</div>
			</div>
		</div>


		<div class="col-md-4" v-if="!isEnable">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="category_id" v-model="category_id" v-select="category_id"
						v-on:change="findProduct">
						<option value="">Elija una categoria (opcional)</option>
						<option v-for="value in category" :value="value.id">{{ value.name }}</option>
					</select>
				</div>
			</div>
		</div>

		<div class="col-md-4" v-if="!isEnable">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="product_id" v-model="product_id" v-select="product_id"
						v-on:change="findStock">
						<option value="">Elija un producto (opcional)</option>
						<option v-for="pr in product" :value="pr.id">{{ pr.product_name }}</option>
					</select>
				</div>
			</div>
		</div>


		<div class="col-md-4" v-if="!isEnable">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="stock_id" v-model="chalan_id" v-select="chalan_id">
						<option value="">Elija un comprobante (opcional)</option>
						<option v-for="ch in chalan" :value="ch.id">{{ ch.chalan_no }}</option>
					</select>
				</div>
			</div>
		</div>

		<div class="col-md-4" v-if="!isEnable">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="vendor_id">
						<option value="">Elija un vendedor (opcional)</option>
						<option v-for="vn in vendor" :value="vn.id">{{ vn.name }}</option>
					</select>
				</div>
			</div>
		</div>


		<div class="col-md-4">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="customer_id">
						<option value="">Cliente (opcional)</option>
						<option v-for="cs in customer" :value="cs.id">{{ cs.customer_name }}</option>
					</select>
				</div>
			</div>
		</div>


		<div class="col-md-4">
			<div class="input-group">
				<div class="form-line">
					<select class="form-control select2" name="user_id">
						<option value="">Elija stock completo / vendedor (opcional)</option>
						<option v-for="us in user" :value="us.id">{{ us.name }}</option>
					</select>
				</div>
			</div>
		</div>


	</div>
</template>


<script>

import { EventBus } from '../../vue-asset';
import Datepicker from 'vuejs-datepicker';
import mixin from '../../mixin.js';

export default {
	props: ['category', 'user', 'customer', 'vendor'],
	components: {

		'vuejs-datepicker': Datepicker,

	},
	mixins: [mixin],

	data() {

		return {

			report_type: '',
			category_id: '',
			product_id: '',
			chalan_id: '',

			product: [],
			chalan: [],



		}

	},

	methods: {

		findProduct() {
			this.product = [];
			axios.get(base_url + 'category/product/' + this.category_id)
				.then(response => {

					this.product = response.data;

				})
		},


		findStock() {

			this.chalan = [];
			axios.get(base_url + 'chalan-list/chalan/' + this.product_id)
				.then(response => {

					this.chalan = response.data;

				})



		},



	},

	computed: {
		isEnable() {
			return this.report_type === 'invoice' || this.report_type === 'due';

		}
	}

}

</script>