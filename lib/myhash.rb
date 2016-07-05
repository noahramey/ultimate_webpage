class MyHash
  define_method(:initialize) do
    @keys = []
    @values = []
  end

  define_method(:keys) do
    @keys
  end

  define_method(:values) do
    @values
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
  end

  define_method(:fetch) do |key|
    if @keys.index(key)
      index = @keys.index(key)
      @values[index]
    else
      "no match"
    end
  end

  define_method(:has_key?) do |value|
    if @values.index(value)
      true
    else
      false
    end
  end

  define_method(:has_value?) do |key|
    if @keys.index(key)
      true
    else
      false
    end
  end

  define_method(:length) do
    if @keys.length == @values.length
      @keys.length
    else
      "something broke..."
    end
  end

  define_method(:merge) do |hash|
    merged_hash = []
    merged_keys = []
    merged_values = []
    hash_keys = hash.keys
    hash_values = hash.values
    @keys.each do |key|
      if hash.has_value?(key)
        merged_keys.push(key)
        index = hash_keys.index(key)
        merged_values.push(hash_values[index])
      else
        merged_keys.push(key)
        index = @keys.index(key)
        merged_values.push(@values[index])
      end
    end
    hash_keys.each do |hash_key|
      if @keys.index(hash_key) == nil
        merged_keys.push(hash_key)
        index = hash_keys.index(hash_key)
        merged_values.push(hash_values[index])
      end
    end
    merged_hash.push(merged_keys, merged_values)
  end
end
