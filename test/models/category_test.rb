require 'test_helper'

class CategoryTest < ActiveSupport::TestCase 

    def setup 
        @category = Category.new(name: "Sports") 
    end

    test "cateogry should be valid" do 
        assert @category.valid?
    end

    test "name should be present" do
        assert_not @category.valid?
    end

    test "name should be unique" do
        @category.save 
        @category2 = Category.new(name: "Sports")
        assert_not @category2.valid? 
    end

    test "name should not be too long" do 
        @cateogry.name = "a" * 26 
        assert_not @category.valid? 
    end

    test "name should not be too short" do 
        @category.name = "aa"
        assert_not @category.valid?

    end

end