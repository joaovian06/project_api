class Project < ApplicationRecord
    validates_presence_of :name, :link, :repository_link, :description
    validates_uniqueness_of :name
end
