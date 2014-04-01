#require 'rspec'
require 'spec_helper'


      before (:each) do
        @product = Product.new
        @product.name = "someValue"
        @product.save
      end

      it " shoud has every value in every column " do
        product = Product.where("#{:name}=someValue")
        value=product.name
        value.shoud == "someValue"
      end

      it "test if default test " do
        "someValue".should == "someValue"
      end

      it " shoud be some " do
        pending
      end
    end

  end

end