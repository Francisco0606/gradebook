class Grade < ApplicationRecord
    validates :student_id, presence: { message: "ID can't be blank" }, length: { is:6, message: "ID is the wrong length (should be 6 characters)" }, uniqueness: { is:true, message: "ID has already been taken" }
    validates_presence_of :student_name
    validates_presence_of :student_grade
    validate :grade_must_be_greater_than_or_equal_to_zero

    #validates numerical, uniqueness, and lenght to ID 
    # validates :student_id, length: { is:6, message: "ID is the wrong length (should be 6 characters)" }
    # validates :student_id, uniqueness: { is:true, message: "ID has already been taken" }
    
    #custom validator
    #makes sure grade is larger than zero
    def grade_must_be_greater_than_or_equal_to_zero
        #if it is not null, if it was null then we can't compare it to zero
        if student_grade != nil
            if student_grade < 0
                errors.add(:student_grade, "can't be less than 0")
            elsif student_grade > 100
                errors.add(:student_grade, "can't be greater than 100")
            end
        end
    end
end
