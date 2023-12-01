class Bag < ApplicationRecord
    validates :color, presence: true

    #----------------------CREATING AN OBJECT-------------------
    # Callback Registration
    # before_save :check_color

    # # Callback Implementation
    # private
    # def check_color #before_save
    #     if self.color.present?
    #         puts "----------the color present is #{self.color}-------"
    #     else
    #         puts "-------There is no color--------"
    #     end
    # end

    # after_save :display_items

    # private 
    # def display_items
    #     if self.no_items.present?
    #         puts "------Item presented is #{self.no_items}------"
    #     else
    #         puts "------There is no items in the bag-------"
    #     end
    # end

    # around_save :sequence_of_callback
    # private
    # def sequence_of_callback
    #     if self.color.present?
    #         self.color = self.color.upcase
    #         puts "-------#{self.color}-------"
    #     else
    #         puts "----Nothing Happens-------"
    #     end
    # end

    after_create :after_creation
    private
    def after_creation
        puts "-----------------Run this after creating the record"
    end

    # around_create :between_creation
    # private
    # def between_creation
    #     puts "-------This runs mid of creation it remain pause until the yeild  is not used and not allow to save the creation----"
    # end

    # before_validation :before_validates
    # private
    # def before_validates
    #     puts "-----This will run before validation------"
    # end

    # after_validation :after_validates
    # private
    # def after_validates
    #     puts "-------this executed after validation-------"
    # end
    
    #----------------------UPDATE AN OBJECT-------------------
    # before_update :before_updated
    # private
    # def before_updated
    #     puts "--before update--"
    # end

    # before_validation :before_validates
    # private
    # def before_validates
    #     puts "--before validation---"
    # end

    # before_save :before_saved
    # private
    # def before_saved
    #     puts "--before save--"
    # end    
   
    # after_update :after_updated
    # private
    # def after_updated
    #     puts "--after update--"
    # end

    # after_validation :after_validates
    # private
    # def after_validates
    #     puts "--after validation--"
    # end

    # after_save :after_saved
    # private
    # def after_saved
    #     puts "--after save--"
    # end 

    # after_commit :after_commission
    # private
    # def after_commission
    #     puts "-------AFTER COMMIT-------"
    # end

    # before_commit :before_commission
    # private
    # def before_commission
    #     puts "-------BEFORE COMMIT-------"
    # end

    #----------------------DESTROY AN OBJECT-------------------
    # before_destroy :before_destroying
    # private
    # def before_destroying
    #     puts "-------BEFORE DESTROYING------"
    # end

    # after_destroy :after_destroying
    # private
    # def after_destroying
    #     puts "-------AFTER DESTROYING------"
    # end

    # after_rollback :after_rollbacking

    # private
    # def after_rollbacking
    #     puts "-------AFTER ROLLBACKING------"
    # end

    #--------------------CONDITIONAL CALLBACK-----------

    # before_save :testing_condition, unless: :no_items_check? #if: :no_items_check?

    # def testing_condition
    #     puts "it will run after condition satisfy"
    # end
    
    # def no_items_check?
    #     if self.no_items.present?
    #         return true
    #     else
    #         return false
    #     end
    # end

end

