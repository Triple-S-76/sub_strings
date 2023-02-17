require './sub_strings'

describe Sub_strings do
  describe 'sub_strings' do
    it 'returns hash of words & number of instances included in phrase' do
      @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      @phrase = "below"
      @result = { "below" => 1, "low" => 1 }
      expect(subject.sub_strings(@phrase, @dictionary)).to eql(@result)
    end
    it 'returns hash of words & number of instances included in phrase' do
      @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      @phrase = "Howdy partner, sit down! How's it going?"
      @result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(subject.sub_strings(@phrase, @dictionary)).to eql(@result)
    end
  end
end
