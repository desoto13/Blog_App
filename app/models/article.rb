class Article < ApplicationRecord
    validates :name, presence: true, length: {in: 1..30}
    validates :body, presence: true, length: {in: 1..280}
end
