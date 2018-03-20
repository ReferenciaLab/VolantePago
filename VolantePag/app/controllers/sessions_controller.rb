class SessionsController < ApplicationController
  def new

  end

  def create
   user = User.find_by_correo(params[:correo])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.codigo_empleado
      if user.tipo =='admin'
        session[:user_id] = user.id
        redirect_to '/usuarios'
      else
      redirect_to empleado_path(session[:user_id])
      end

    else
      redirect_to login_path, flash: {alert: "Contraseña o Usuario Invalido"}
      #render 'sessions/new'
    end


  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
