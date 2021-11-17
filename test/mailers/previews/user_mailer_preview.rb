class UserMailerPreview < ActionMailer::Preview

  def welcome_reset_password_instructions
    UserMailer.welcome_reset_password_instructions(User.last)
  end

end