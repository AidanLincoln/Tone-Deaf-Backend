class Note < ApplicationRecord
    # has_and_belongs_to_many :collections
    has_many :collections_notes
    has_many :collections, through: :collections_notes
end
