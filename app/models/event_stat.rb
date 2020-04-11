class EventStat < ApplicationRecord
  belongs_to :event
  before_save do
    self.attendance = update!
    self.sales = update!
  end
  before_destroy do
    self.attendance = update!
    self.sales = update!
  end
end
