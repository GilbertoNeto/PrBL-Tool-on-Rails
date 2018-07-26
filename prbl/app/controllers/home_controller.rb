class HomeController < ApplicationController

  before_action :check_signed_in, only: [:login, :signup]

  def index
  end

  def login
  end

  def signup
  end

  def about
  end

  def send_contact
    email = params[:email_guest]
    GuestMailer.contact(email).deliver_now
    flash.now[:alert] = 'Email enviado com sucesso!'

    redirect_to home_index_path

  end

  def check_signed_in
    redirect_to '/' if signed_in?
  end
end
