// mixins for moment js ... recomanded to not include when you don't need it
import moment from 'moment';
import 'moment/locale/es';
moment.locale('es');
export default{


   created(){
     
     // this.hello();

   },

   methods : {

  
   },

 filters: {
  moment: function (date,format) {
    
    return moment(date).format(format || 'LL');
  }

},






}