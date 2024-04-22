require 'rails_helper'
require 'spec_helper'

RSpec.describe Friendship, type: :model do

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:friend).class_name('User') }
end

end
