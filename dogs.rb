require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end


def name_lengths(dogs)

  new_dogs_Array_wth_lengths = [] #loop through each dog


  dogs.each do |dog_name| #find dog name length  #push into a new array
    new_dogs_Array_wth_lengths.push(dog_name.length)
  end

  new_dogs_Array_wth_lengths  #RETURN new array with name lengths
end


def reverse_dog_names(dogs)
  reversed_dog_names = []     #create a new array to remember the reversed dog names

  dogs.each do |dog|    #loop through the dogs
    new_dog_name = dog.reverse    #find the reversed dog name
    reversed_dog_names.push(new_dog_name)    #put that reversed dog name in new array
  end

  reversed_dog_names
end


def first_three_dogs_with_each(dogs)
   first_three_dogs = []
   counter = 0

    dogs.each do |dog|
      first_three_dogs.push(dog)
      counter = counter + 1

      if counter == 3
        break
      end

    end

  first_three_dogs
end


def first_three_dogs_without_each(dogs)
  dogs [0..2] #called slicing an array
end


def reverse_case_dog_names(dogs)
  # dogs.map { |dog| dog.swapcase }

  inverse_dog_names = []

  dogs.each do |dog|
    new_dog_name = dog.swapcase
    inverse_dog_names.push(new_dog_name)
  end

  inverse_dog_names
end


def sum_of_all_dog_name_lengths(dogs)
  #this is called reduce
  total_length = 0

  dogs.each do |dog_name|
    total_length = total_length + dog_name.length
  end

  total_length
end

def dogs_with_long_names(dogs)
  #replace any dog name with a boolean if it's longer than 4 characters
  #boolean is true or false

  #long_dog_names.push(dog_name.length > 4) instead of IF ELSE

  #dogs.map { |dog_name| dog_name.length > 4 }

  long_dog_names = []

  dogs.each do |dog_name|
    if dog_name.length > 4
      long_dog_names.push(true)
    else
      long_dog_names.push(false)
    end
  end

  long_dog_names
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

another_dog_array = ["Fido"]

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("how many dogs", how_many_dogs(another_dog_array) == 1)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

