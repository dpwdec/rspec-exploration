require 'private'

describe Privates do
  it "receives my own double" do
    mocker = instance_double(MyMock, :return_it => 8)
    subject.instance_variable_set(:@private_object, mocker)
    expect(subject.report_private).to eq(8)
  end
end