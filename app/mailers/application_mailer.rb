class ApplicationMailer < ActionMailer::Base
  default from: 'localhost3000@sampleapp.con', host: "https://localhost:3000", password: 'sampleapp', domain: 'sampleapp.com', subject: 'application mailer', body: layout: 'application mailer', secure: true,  cookies: true
  layout 'welcome_mailer.rb'
end
