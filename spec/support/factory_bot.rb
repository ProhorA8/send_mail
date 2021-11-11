# frozen_string_literal: true

RSpec.configure do |config|
  # загружаем класс во все наши спеки
  config.include FactoryBot::Syntax::Methods
end
