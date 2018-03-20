class NominaComprobantePago < ActiveRecord::Base
  has_many :nomina_comprobante_dets, :foreign_key => 'Codigo_Empleado'
  self.table_name = 'vw_NominaComprobantePago'
  self.primary_key = ('Codigo_Empleado')
  scope :consultaEmpleado, -> { where(Ano_Correspondiente: '2016', Mes_correspondiente:'11', Codigo_Empleado: '1963', Periodo:'2' ) }


end
