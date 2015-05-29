class Coach < ActiveRecord::Base
  has_many :brides
  has_many :daily_note
end
