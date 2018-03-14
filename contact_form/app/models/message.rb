class Message < ApplicationRecord

  validates :email, :presence => {message: "Email address cannot be blank."}, email_format: {message: "Please enter a valid email address."}, :on => :create
  validates :content, :presence => {message: "Message content cannot be blank."}, :length => { :minimum => 2, message: "Message is too short." }, :on => :create
end
