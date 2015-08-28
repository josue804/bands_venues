class String
  define_method(:to_boolean) do
    eql?('true')
  end
end
