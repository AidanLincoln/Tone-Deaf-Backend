class Collection < ApplicationRecord
    # has_and_belongs_to_many :notes
    has_many :collections_notes
    has_many :notes, through: :collections_notes
    belongs_to :user, optional: true
end
