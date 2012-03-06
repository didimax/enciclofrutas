class Fruta < ActiveRecord::Base
  belongs_to :moderador
  belongs_to :epoca
end
