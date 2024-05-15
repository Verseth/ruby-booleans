# frozen_string_literal: true
# typed: true

require_relative "../booleans"
require "sorbet-runtime"

module Boolean
  # Contains additional methods that are added by
  # the `booleans` gem to `Object`.
  module CoreExtension
    extend T::Sig
    # Convert a Ruby value to `true` or `false`
    # according to the truthiness of the value.
    #
    # Most Ruby objects get converted to `true` with the
    # exception of: `nil` and `false`.
    sig { returns(T::Boolean) }
    def to_bool
      return true if self

      false
    end
  end
end

Object.include(Boolean::CoreExtension)
TrueClass.include(Boolean)
FalseClass.include(Boolean)
