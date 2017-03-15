class UnitTrust < ApplicationRecord
  belongs_to :user, optional: true
end
