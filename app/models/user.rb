# frozen_string_literal: true

class User < ApplicationRecord
  validates :code, presence: true, uniqueness: true, length: { maximum: 35 }

  validates :email, length: { maximum: 255 }, presence: true, uniqueness: true
  validates :email, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/

  validates :entity, presence: true

  before_create :set_type_create
  before_update :set_type_update
  before_destroy :set_type_destroy

  private

  def set_type_create
    self.report_type = 'Confirmed'
  end

  def set_type_update
    self.report_type = 'Modified'
  end

  def set_type_destroy
    self.report_type = 'Cancelled'
  end
end
