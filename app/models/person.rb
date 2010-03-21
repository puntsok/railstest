class Person < ActiveRecord::Base
  
  validates_presence_of :name 
  validates_length_of   :name, :within => 2..30
  
  belongs_to :supervisor, :class_name => 'Person',
             :foreign_key => 'supervisor_id'
  has_many   :underlings, :class_name => 'Person',
             :foreign_key => 'supervisor_id'
end
