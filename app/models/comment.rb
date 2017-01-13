class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  RATINGS = {
     '1 Star' => '*',
     '2 Star' => '* *',
     '3 Star' => '* * *',
     '4 Star' => '* * * *',
     '5 Star' => '* * * * *'
  }

  def ux_interface_rating
    RATINGS.invert[self.rating]
  end
end
