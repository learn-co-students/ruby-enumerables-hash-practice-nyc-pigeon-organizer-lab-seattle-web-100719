def nyc_pigeon_organizer(data)
  #create a new hash that will be returned at the end
  new_hash = {}
  #initialize some values
  color_options = data[:color].keys #purple, grey, white, brown
  gender_options = data[:gender].keys #male, female
  home_options = data[:lives].keys #Subway, Central Park, Library, City Hall


  #Because pigeons can only be male or female, take the values from the gender options and make them the new keys of the new_hash
  #Add the categories color, gender, and lives as the values
  counter1 = 0
  while counter1 < data[:gender][:male].length do
    new_hash[data[:gender][:male][counter1]] = {}
    new_hash[data[:gender][:male][counter1]][:color] = []
    new_hash[data[:gender][:male][counter1]][:gender] = []
    new_hash[data[:gender][:male][counter1]][:lives] = []
    counter1 += 1
  end
  counter2 = 0
  while counter2 < data[:gender][:female].length do
    new_hash[data[:gender][:female][counter2]] = {}
    new_hash[data[:gender][:female][counter2]][:color] = []
    new_hash[data[:gender][:female][counter2]][:gender] = []
    new_hash[data[:gender][:female][counter2]][:lives] = []
    counter2 += 1
  end

  #Now, the new_hash has keys that are pigeon names. Iterate through the hash

  new_hash.each do |pigeon_element|
    #The first index of each element of the hash is going to be the pigeon name
    pigeon_name = pigeon_element[0]

    #Go through the gender options and check if the value at each option (male or female) includes the pigeon name
    #If it does, then push that value (male or female) to the array in the new hash under the pigeon's name and gender
    counter3 = 0
    while counter3 < gender_options.length do
      if data[:gender].values[counter3].include?(pigeon_name)
        new_hash[pigeon_name][:gender].push(data[:gender].keys[counter3].to_s)
      end
      counter3 += 1
    end

    #Go through the color options and check if the value at each option (purple, grey, white, or brown) includes the pigeon name
    #If it does, then push that value (purple, grey, white, or brown) to the array in the new hash under the pigeon's name and color
    counter4 = 0
    while counter4 < color_options.length do
      if data[:color].values[counter4].include?(pigeon_name)
        new_hash[pigeon_name][:color].push(data[:color].keys[counter4].to_s)
      end
    counter4 += 1
    end

    #Go through the lives options and check if the value at each option (subway, central park, library, city hall) includes the pigeon name
    #If it does, then push that value (subway, central park, library, city hall) to the array in the new hash under the pigeon's name and lives
    counter5 = 0
    while counter5 < home_options.length do
      if data[:lives].values[counter5].include?(pigeon_name)
        new_hash[pigeon_name][:lives].push(data[:lives].keys[counter5].to_s)
      end
    counter5 += 1
    end
  end

  #return the new hash
  new_hash
end
