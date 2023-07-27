class Customer < ApplicationRecord
  belongs_to :shopping_session, optional: true
end
