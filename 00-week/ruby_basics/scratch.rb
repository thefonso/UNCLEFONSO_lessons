require 'pry'


require 'rspec/autorun'

# Resources:
# http://literacy.kent.edu/Minigrants/Cinci/romanchart.htm
# https://en.wikipedia.org/wiki/Roman_numerals#Roman_numeric_system

describe 'Numeral' do
    [
        [ 1, 'I' ],
        [ 2, 'II' ],
        [ 3, 'III' ],
        [ 4, 'IV' ],
        [ 5, 'V' ],
        [ 6, 'VI' ],
        [ 8, 'VIII' ],
        [ 15, 'XV' ],
        [ 21, 'XXI' ],
        [ 35, 'XXXV' ],
        [ 44, 'XLIV' ],
        [ 98, 'XCVIII' ],
        [ 490, 'CDXC'],
        [ 501, 'DI'],
        [ 904, 'CMIV' ],
        [ 909, 'CMIX' ],
        [ 3200, 'MMMCC' ]
    ].each do |arabic_numeral, roman_numeral|
        it "returns #{roman_numeral} for #{arabic_numeral}" do
            numeral = Numeral.new(arabic_numeral)
            expect(numeral.convert_to_roman).to eq(roman_numeral)
        end
    end

    # it 'returns I for 1' do
    #   numeral = Numeral.new(1)
    #   expect(numeral.convert_to_roman).to eq('I')
    # end
end

class Numeral
    def initialize(number)
        @number = number
    end

    def convert_to_roman
        # receive any number
        # convert to roman
        # conversion table
        roman_hash = {
            1000 => 'M',
            900  => 'CM',
            500 => 'D',
            400 => 'CD',
            100 => 'C',
            90  => 'XC',
            50 => 'L',
            40 => 'XL',
            10 => 'X',
            9  => 'IX',
            5 => 'V',
            4 => 'IV',
            1 => 'I'
        }
        # 44 XLIV => XL - IV => 10-50 X-L => IV
        my_string = ""
        roman_hash.each do |key, value|
            (@number / key).times {my_string << value; @number = @number - key}
        end
        my_string

    end


end
