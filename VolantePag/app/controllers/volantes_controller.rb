class VolantesController < ApplicationController


  def consulta


  begin
    if params[:Mes_correspondiente].present? && params[:Periodo].present? && params[:Ano_Correspondiente].present?

      @Consulta = NominaComprobantePago.where(['Mes_correspondiente=? AND Periodo = ? AND Ano_Correspondiente=? ' ,params[:Mes_correspondiente], params[:Periodo], params[:Ano_Correspondiente]],).order('Ano_Correspondiente Desc').find(session[:user_id])
      @nomina = @Consulta.Codigo_Nomina
      @Detalle =@Consulta.nomina_comprobante_dets.where(Codigo_nomina: @nomina)



   else

    @Consulta = NominaComprobantePago.where(:Codigo_Empleado => params[:Codigo_Empleado]).order('Ano_Correspondiente Desc, Mes_correspondiente Desc, Periodo Desc').find(session[:user_id])
    @nomina = @Consulta.Codigo_Nomina
    @Detalle =@Consulta.nomina_comprobante_dets.where(Codigo_nomina: @nomina)



    end
  rescue
    redirect_to empleado_path, flash: {notice: "=> Registro no encontrado <="}
  end
end



  def noEmpleado

  end


  end
