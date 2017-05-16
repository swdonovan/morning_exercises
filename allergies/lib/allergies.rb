require 'pry'

class Allergies
  binding.pry
  def initialize(number)
    @number = number.to_s
    @number_to_allergy_assoc = {"1" => "eggs", "2" => "peanuts", "4" => "shellfish",
                                "8" => "strawberries", "16" => "tomatoes", "32" => "chocolate",
                                "64" => "pollen", "128" => "cats"}
    @list = []
  end



  def check
    until @number == 0
      @number_to_allergy_assoc.keys.reverse.each do |keys|
      keys.to_i
      subtract(keys)
      end
    end
    puts @list
  end

  def subtract(keys)
    key = keys.to_i
    if (@number - key) >= 0
      @number -= key
      @list << @number_to_allergy_assoc[keys]
    end
  end
end

puts "Please enter patients allergy # >>"
input = gets.chomp
allergy = Allergies.new(input)
allergy.check
