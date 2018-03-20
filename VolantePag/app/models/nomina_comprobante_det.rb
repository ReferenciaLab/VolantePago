class NominaComprobanteDet < ActiveRecord::Base
  belongs_to :nomina_comprobante_pago
  belongs_to :excedente
  self.table_name = 'vw_NominaComprobanteDet'
  self.primary_key =('Codigo_nomina')

end
