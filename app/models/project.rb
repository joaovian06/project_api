class Project < ApplicationRecord
    validates_presence_of :name, :link, :repository_link, :description
end
