# frozen_string_literal: true

require_relative '../booleans'

module Boolean
  module CoreExtension
    # Convert a Ruby value to `true` or `false`
    # according to the truthiness of the value.
    #
    # Most Ruby objects get converted to `true` with the
    # exception of: `nil` and `false`.
    def to_bool
      return true if self

      false
    end
  end
end

Object.include(Boolean::CoreExtension)
TrueClass.include(Boolean)
FalseClass.include(Boolean)
