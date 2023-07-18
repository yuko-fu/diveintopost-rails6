class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_mail(agenda)
    @agenda = agenda
    @users = Team.find(@agenda.team_id).users
    mail to: @users.pluck(:email), subject: "アジェンダ削除しました"
  end
end
