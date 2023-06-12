class Category < ActiveRecord::Base
    has_many :items

    validates :name, presence: true, uniqueness: true
    #food.errors.full_messages #=> ["Name has already been taken"] terurn an array of error messages
    #food.errors.messages.to_sentence #=> "Name can't be blank" terurn a string of error messages

    def errors_array
        self.errors.full_messages
    end

end