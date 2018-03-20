class UsersController < ApplicationController
  before_action :requiere_usuario_admin,  only: [:index, :edit,:update,:new,:create]
  def index
    @usuarios = User.paginate(:page => params[:page], :per_page => 10).order('codigo_empleado ASC')

  end

  def edit
    @user = User.find(params[:id])
  end

  def editPerfil
    @user = User.find(params[:id])
  end

  def updatePerfil
    @user = User.find_by(params[:codigo_empleado])
    if @user.update(params_user_perfil)
      redirect_to 'error'
    else
      render 'users/editPerfil'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params_user_edit)
      redirect_to '/usuarios'
    else
      render 'edit'
    end
  end

    def new
      @user = User.new
    end

    def create
      @user = User.new(params_user)
      if @user.save
        redirect_to '/usuarios'
      else
        render  'new'
      end
    end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to '/usuarios', :notice =>'Usuario eliminado correctamente '
    end
  end



  private
  def params_user
    params.require(:user).permit(:codigo_empleado,:correo,:password,:tipo)
  end

  def params_user_edit
    params.require(:user).permit(:codigo_empleado,:correo,:password,:tipo,:activo)
  end

  def params_user_perfil
    params.require(:user).permit(:password)
  end

end
