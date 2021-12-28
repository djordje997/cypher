require_relative '../lib/rot.rb'
describe "Rot" do
    it "rot5 of input 'omg'returns 'trl'" do
        rot = Rot.new.rot(5, "omg")
        expect(rot).to eq("trl")
    end
    it "rot0 of input 'c' returns 'c'" do
        rot = Rot.new.rot(0, "c")
        expect(rot).to eq("c")
    end
    it "rot26 of input 'Cool' returns 'Cool'" do
        rot = Rot.new.rot(26, "Cool")
        expect(rot).to eq("Cool")
    end
    it "rot13 of input 'The quick brown fox jumps over the lazy dog.' returns 'Gur dhvpx oebja sbk whzcf
    bire gur ynml qbt.'" do
        rot = Rot.new.rot(13, "The quick brown fox jumps over the lazy dog.")
        expect(rot).to eq("Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
    end
    it "rot13 of input 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.' returns 'The quick brown fox jumps over the lazy dog.'" do
        rot = Rot.new.rot(13, "Gur dhvpx oebja sbk whzcf bire gur ynml qbt.")
        expect(rot).to eq("The quick brown fox jumps over the lazy dog.")
    end
end
