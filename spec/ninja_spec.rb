require 'ninja'
#by default, the above file path expects lib/ninja - your ruby files should always go in a lib folder, and all of your spec files should be in a spec folder.  Remember to require the appropriate ruby file.

RSpec.describe Ninja do
  let(:ninja1){
    Ninja.new(name: "Goldenmark", health: 100, power: 40)
  }

  it ".new creates a new Ninja" do
    expect(ninja1).to be_an_instance_of Ninja
  end

  it "#name returns a Ninja's name" do
    expect(ninja1.name).to eql("Goldenmark")
  end

  it "#health returns a Ninja's health" do
    expect(ninja1.health).to eql(100)
  end

  it "#power returns a Ninja's power" do
    expect(ninja1.power).to eql(40)
  end

  it "#health= changes a Ninja's health" do
    expect(ninja1.health = 80).to eql(80)
  end

  context "With 2 Ninjas" do
    let(:ninja2){
      Ninja.new(name: "Steeleyes", health: 120, power: 30)
    }

    it "#kungpows another" do
      ninja1.kungpow(ninja2)
      expect(ninja2.health).to eql(80) 
    end
  end


end
