class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'
    
     def welcome_email(order)
       @order = order
       @sub = "Order ID is #{order.id}"
       mail(to: @order.email, subject: @sub)
     end
end
