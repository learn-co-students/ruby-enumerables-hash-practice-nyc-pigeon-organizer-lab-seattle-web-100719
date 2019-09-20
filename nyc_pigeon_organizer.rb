def nyc_pigeon_organizer(data)
  pigeon_name_array = []
  data.each do |pigeon_attributes, value|
    value.each do |attributes, name|
      pigeon_name_array += name
    end
  end
  pigeon_name_array.uniq!
end
  
end
