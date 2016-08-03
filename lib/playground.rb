#NOT AN EXAMPLE OF WHAT WE'D WANT TO DO

# start with RSpec for the first spec in the file
RSpec.describe "#hola" do
  it 'greets a person with their name' do
    expect(hola('Walid')).to eql('Hello Walid')
  end
end

def hola(name)
  "Hello #{name}"
end
