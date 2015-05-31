class DailyNote < ActiveRecord::Base
  has_many :comments
  belongs_to :coach
  belongs_to :bride
end

class DailyNote < ActiveRecord::Base
  acts_as_commentable
end
