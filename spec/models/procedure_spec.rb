require 'rails_helper'

RSpec.describe Procedure, type: :model do
  @user = User.create(name: 'Pamphile')
  @group = Category.new(name: 'Food', icon: 'smile', author: @user)
  subject do
    Procedure.create(name: 'Salad', amount: 100)
  end

  before { subject.save }

  it 'name must be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'the amount must be present' do
    subject.amount = 100
    expect(subject).to_not be_valid
  end
end
