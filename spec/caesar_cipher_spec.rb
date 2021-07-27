require "./lib/cipher.rb"

#describe Caesar_Cipher do
    describe "#caesar_cipher" do
        it "returns a string of characters moved by 5 positions" do
            expect(caesar_cipher("abcdefg",5)).to eql("fghijkl")
        end

        it "returns a string of characters and spaces" do
            expect(caesar_cipher(" a b c d e ",2)).to eql(" c d e f g ")
        end

        it "wraps around z" do
            expect(caesar_cipher("xyz",2)).to eql("zab")
        end

end

