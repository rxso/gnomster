class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  RATINGS = {
     '1 Star' => '1_star',
     '2 Star' => '2_stars',
     '3 Star' => '3_stars',
     '4 Star' => '4_stars',
     '5 Star' => '5_stars'
  }

  def ux_interface_rating
    RATINGS.invert[self.rating]
  end
end
