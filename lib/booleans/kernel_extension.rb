# typed: true
# frozen_string_literal: true

module Booleans
  # Add the Boolean method to Kernel
  module KernelExtension
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
end

Kernel.include(Booleans::KernelExtension)
