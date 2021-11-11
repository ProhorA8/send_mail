# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations check' do
    # Проверяем наличие валидации
    it { should validate_presence_of :code }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :entity }
  end
end
