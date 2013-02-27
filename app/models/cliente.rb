class Cliente < ActiveRecord::Base
  attr_accessible :cpf, :nome, :rg
end
