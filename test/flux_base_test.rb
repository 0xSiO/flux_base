require 'test_helper'

module FluxBase
  class Test < ActiveSupport::TestCase
    test 'truth' do
      assert_kind_of Module, FluxBase
    end
  end
end
