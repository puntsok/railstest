class Jedi < ActiveRecord::Base
  belongs_to :master, :class_name  => "Jedi",
                      :foreign_key => "master_id"
  has_many :padawans, :class_name  => "Jedi",
                      :foreign_key => "master_id"
end
