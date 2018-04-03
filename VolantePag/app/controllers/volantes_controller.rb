class VolantesController < ApplicationController


  def consulta


  begin
    if params[:Mes_correspondiente].present? && params[:Periodo].present? && params[:Ano_Correspondiente].present?

      @Usuario = User.find_by_codigo_empleado(session[:user_id])

      @Consulta = NominaComprobantePago.where(['Mes_correspondiente=? AND Periodo = ? AND Ano_Correspondiente=? ' ,params[:Mes_correspondiente], params[:Periodo], params[:Ano_Correspondiente]],).order('Ano_Correspondiente Desc').find(session[:user_id])
      @nomina = @Consulta.Codigo_Nomina
      @Detalle =@Consulta.nomina_comprobante_dets.where(Codigo_nomina: @nomina)



   else

     @Usuario = User.find_by_codigo_empleado(session[:user_id])

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

  def editar
    @Usuario = User.find_by_codigo_empleado(session[:user_id])
  end

  def updateUser
    @Usuario = User.find_by_codigo_empleado(session[:user_id])
    if @Usuario.update(params_user)
      session[:user_id] = nil
      redirect_to '/login'
    else
      render 'editar'
    end

  end

private
  def params_user
    params.require(:user).permit(:password)
  end


  end
