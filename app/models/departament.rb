class Departament < ApplicationRecord

    validates :name, uniqueness: true, presence: true , length:{in: 3..40}

end
