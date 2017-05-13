class Item < ApplicationRecord
  belongs_to :delivery, optional: true
end
