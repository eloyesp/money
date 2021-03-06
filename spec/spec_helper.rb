require "money"
require "rubygems"

#RSpec.configure do |config|
#end

def reset_i18n()
  I18n.backend = I18n::Backend::Simple.new
end

def store_number_currency_formats(locale)
  I18n.backend.store_translations(locale,
                                  :number => {
                                    :currency => {
                                      :format => {
                                        :delimiter => ",",
                                        :separator => "."
                                      }
                                    }
                                  })
end
