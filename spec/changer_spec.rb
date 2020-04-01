require 'changer.rb'

describe Changer do
  it 'increments my_number by 100' do
    expect{subject.increment}.to change(subject, :my_number).by(-100)
  end
end