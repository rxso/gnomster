class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email

  RATINGS = {
     '*' => '1_star',
     '* *' => '2_stars',
     '* * *' => '3_stars',
     '* * * *' => '4_stars',
     '* * * * *' => '5_stars',
  }

  def ux_interface_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
    NotificationMailer.comment_added(self).deliver
  end
end
