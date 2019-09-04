class Article < ApplicationRecord
	 validates :title, presence: true,
                    length: { minimum: 1 }
      validates :text, presence: true,
                    length: { minimum: 20 }
end
