class Relationship < ActiveRecord::Base
  belongs_to :from
  belongs_to :to
  belongs_to :relation
end
