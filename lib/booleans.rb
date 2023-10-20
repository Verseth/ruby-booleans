# frozen_string_literal: true

require_relative "booleans/version"

# Convert a Ruby value to `true` or `false`
# according to the truthiness of the value.
#
# Most Ruby objects get converted to `true` with the
# exception of: `nil` and `false`.
#
# @return [Boolean]
def Boolean(val)
  return true if val

  false
end
