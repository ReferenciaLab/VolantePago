class VolantesController < ApplicationController


  def consulta


  begin
    if params[:Mes_correspondiente].present? && params[:Periodo].present? && params[:Ano_Correspondiente].present?

      @ExcedenteUp = Excedente.find_by_Codigo_Empleado(session[:user_id])


      @Consulta = NominaComprobantePago.where(['Mes_correspondiente=? AND Periodo = ? AND Ano_Correspondiente=? ' ,params[:Mes_correspondiente], params[:Periodo], params[:Ano_Correspondiente]],).order('Ano_Correspondiente Desc').find(session[:user_id])
      @nomina = @Consulta.Codigo_Nomina
      @Detalle =@Consulta.nomina_comprobante_dets.where(Codigo_nomina: @nomina)

      @codigoEmpleado = @Consulta.Codigo_Empleado
      @Excedente = Excedente.where(Codigo_Empleado: @codigoEmpleado )



   else

     @ExcedenteUp = Excedente.find_by_Codigo_Empleado(session[:user_id])

    @Consulta = NominaComprobantePago.where(:Codigo_Empleado => params[:Codigo_Empleado]).order('Ano_Correspondiente Desc, Mes_correspondiente Desc, Periodo Desc').find(session[:user_id])
    @nomina = @Consulta.Codigo_Nomina
    @Detalle =@Consulta.nomina_comprobante_dets.where(Codigo_nomina: @nomina)

    @codigoEmpleado = @Consulta.Codigo_Empleado
    @Excedente = Excedente.where(Codigo_Empleado: @codigoEmpleado )


    end
  rescue
    redirect_to empleado_path, flash: {notice: "=> Registro no encontrado <="}
  end
end



  def noEmpleado

  end

  def editEx
    @ExcedenteUp = Excedente.find_by_Codigo_Empleado(session[:user_id])
  end

  def updateEX
    @ExcedenteUp = Excedente.find_by_Codigo_Empleado(session[:user_id])
    if @ExcedenteUp.update(params_excedente)
      redirect_to '/consulta/:Codigo_Empleado'
    else
      render
    end

  end

  private
  def params_excedente
    params.require(:excedente).permit(:Eleccion)
  end




  end
