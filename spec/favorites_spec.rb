require 'spec_helper'

describe Favorites do

  class Foo
    include Favorites

    favorite :email, {
      chris: "chris@arches.io",
      joe: "joe@joe.io",
    }

    favorite :name, {
      bob: "bob name",
      sally: "sally name",
    }

    def self.find_by_email(email)
      "#{email} finder"
    end

    def self.find_by_name(name)
      "#{name} finder"
    end
  end

  it "delegates to finder methods for each favorite" do
    Foo.chris.should == "chris@arches.io finder"
    Foo.joe.should == "joe@joe.io finder"

    Foo.bob.should == "bob name finder"
    Foo.sally.should == "sally name finder"
  end
end
