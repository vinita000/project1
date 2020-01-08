class UserMailer < ApplicationMailer
    default from: "notifications@yoursite.com"

    def notification
      @user = params[:user]
      mail(to: @user.email, subject: "Alert Notiication")
    end
end
