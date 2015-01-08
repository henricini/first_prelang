require 'rails_helper'

RSpec.describe "maps/index", :type => :view do
  before(:each) do
    assign(:maps, [
      Map.create!(
        :user => nil
      ),
      Map.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of maps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
