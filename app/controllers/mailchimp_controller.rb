class MailchimpController < ApplicationController

  skip_before_action :authenticate_user!, only: [:subscribe]
  def subscribe
    mailchimp = Mailchimp::API.new('88bc76d82acc801afac9839e346247e9-us20')
    p subscribe_params[:email]
    mailchimp.lists.subscribe('a73e435e39',
                              { email: subscribe_params[:email],
                                merge_vars: {
                                    "FNAME": subscribe_params['first_name'],
                                    "LNAME": subscribe_params['last_name']
                              }})
  end


  private
  def subscribe_params
    params.require(:subscribe).permit(:first_name, :last_name, :email)
  end
end
