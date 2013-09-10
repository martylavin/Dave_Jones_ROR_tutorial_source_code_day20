class Recipe < ActiveRecord::Base

validates_presence_of :name, :ingredients, :made_by 
validates_numericality_of :serves, :only_integer => true 
validates_uniqueness_of :name 
end
