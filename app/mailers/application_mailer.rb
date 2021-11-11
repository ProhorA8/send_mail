# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'procustom@mail.ru'
  layout 'mailer'
end
