require "spec_helper"
require "#{root_path}/set_1/crypto_helpers.rb"


describe CryptoHelpers do
	describe "#hex_to_base64" do
		it "will correctly convert from Hex to Base64" do
			hex = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f6"\
						"9736f6e6f7573206d757368726f6f6d"

			expected_base64 = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzI"\
												"G11c2hyb29t"

			expect(CryptoHelpers.new.hex_to_base64(hex)).to eq expected_base64
		end
	end
end
