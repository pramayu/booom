class Note < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :memos, dependent: :destroy
  accepts_nested_attributes_for :memos, reject_if: :all_blank, allow_destroy: true
end
