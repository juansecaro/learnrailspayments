class PurchaseMailer < ActionMailer::Base
  layout 'purchase_mailer'
  default from: "Learn Rails <learnrails@gmail.com>"

  def purchase_receipt purchase
    @purchase = purchase
    mail to: @purchase.email, subject: "Thank for your business!"
  end

end
