# frozen_string_literal: true

class Authers::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
    before_action :auther_params, only: %i[create update]
    before_action :set_auther, only: [:edit]
  # def index
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
   def create
    @auther = Auther.new(auther_params)

    if @auther.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
   end

  # GET /resource/edit
    def edit
    end

  # PUT /resource
    def update
      
      if @auther.update(auther_params)
        redirect_to posts_path
      else
        render :edit, status: :unprocessable_entity
      end
    end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  def auther_params
    params.require(:auther).permit(:name, :email, :password, :password_confirmation)
  end

  def set_auther
    @auther = Auther.find(params[:id])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
