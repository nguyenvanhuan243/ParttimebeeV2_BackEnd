class Notification < ApplicationRecord

  belongs_to :users
  #Notify notification for parttimer and employer when he regisger account
  def self.notification_wellcome (user)
    @user = user
    @notification = Notification.new
    if @user.type_user == 'employer'
      notification = 'Let’s start posting job now'
    else
      notification = 'Let’s start searching job now'
    end
    @notification[:content] = 'Hi ' + @user.full_name+ ', welcome to Part-time Bee!' + notification + Emoji.find_by_alias('stuck_out_tongue_winking_eye').raw+'!'
    @notification[:user_id] = @user[:id]
    @notification[:status]  = 'unread'   
    @notification.save
  end
end
