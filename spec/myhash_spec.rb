require('rspec')
require('myhash')

describe(MyHash) do
  describe("fetch") do
    it('retrieves a stored value by its key') do
      test_hash = MyHash.new()
      test_hash.store("dog", "Rafael")
      test_hash.store("cat", "Rufio")
      expect(test_hash.fetch("dog")).to(eq("Rafael"))
      expect(test_hash.fetch("cat")).to(eq("Rufio"))
      expect(test_hash.fetch("horse")).to(eq("no match"))
    end
  end

  describe("has_key?") do
    it('returns true if a key exists for a given value') do
      test_hash = MyHash.new()
      test_hash.store("dog", "Rafael")
      test_hash.store("cat", "Rufio")
      expect(test_hash.has_key?("Rafael")).to(eq(true))
      expect(test_hash.has_key?("Rufio")).to(eq(true))
      expect(test_hash.has_key?("Ralph")).to(eq(false))
    end
  end

  describe("has_value?") do
    it('returns true if a value exists for a given key') do
      test_hash = MyHash.new()
      test_hash.store("dog", "Rafael")
      test_hash.store("cat", "Rufio")
      expect(test_hash.has_value?("dog")).to(eq(true))
      expect(test_hash.has_value?("cat")).to(eq(true))
      expect(test_hash.has_value?("horse")).to(eq(false))
    end
  end

  describe("length") do
    it('returns number of key-value pairs in the object') do
      test_hash = MyHash.new()
      test_hash.store("dog", "Rafael")
      test_hash.store("cat", "Rufio")
      expect(test_hash.length()).to(eq(2))
    end
  end

  describe("merge") do
    it('merges two custom hashes into a single hash') do
      test_hash = MyHash.new()
      test_hash2 = MyHash.new()
      test_hash.store("dog", "Rafael")
      test_hash.store("cat", "Ruby")
      test_hash2.store("cat", "Rufio")
      test_hash2.store("horse", "Ralph")
      expect(test_hash.merge(test_hash2)).to(eq([["dog", "cat", "horse"], ["Rafael", "Rufio", "Ralph"]]))
    end
  end
end
