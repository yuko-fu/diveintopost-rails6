class TeamMailer < ApplicationMailer
  def team_mail(user)
    @user = user

    mail to: @user.email, subject: "チームリーダーの変更通知"
  end
end
