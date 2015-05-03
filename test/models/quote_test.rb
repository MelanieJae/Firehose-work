require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
	test "unique_tag" do
		quote = Quote.create(:saying => "There's no business like show business", :author => "Irving Berlin")
		expected = "IB#" + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end

end
