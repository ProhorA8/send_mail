require 'byebug/commands/pry'
class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Регистрация')
  end

  def report_send(user)
    @user = user
    mail(to: @user.email, subject: 'Отчёт')
  end
end
