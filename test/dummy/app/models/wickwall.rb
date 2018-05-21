class Wickwall < ApplicationRecord
  acts_as_demoplugin demoplugin_text_field: :last_tweet
end
