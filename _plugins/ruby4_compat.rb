# GitHub Pages ignores custom plugins. This only runs locally so Jekyll 4 can
# preview on Ruby 4, which no longer implements Object#tainted?.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
