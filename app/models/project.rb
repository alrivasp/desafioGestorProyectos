class Project < ApplicationRecord
    #validates
    validates :name, presence: true
    validates :description, presence: true
    validates :state, presence: true

    #scope
    #scope :filter_state, ->(state) { where("state = ?", state}
    scope :filter_state, ->(type_state) { where("state=?", type_state)}
    
    
    #callbacks
    before_save :default_state

    def default_state
        self.state = "Propuesta"
    end
end
