# frozen_string_literal: true
# typed: true

require_relative "booleans/version"
require "sorbet-runtime"

# Add the Boolean method to Kernel
module Kernel
  extend T::Sig

  # Convert a Ruby value to `true` or `false`
  # according to the truthiness of the value.
  #
  # Most Ruby objects get converted to `true` with the
  # exception of: `nil` and `false`.
  sig { params(val: T.anything).returns(T::Boolean) }
  def Boolean(val) # rubocop:disable Naming/MethodName
    return true if val

    false
  end
end
