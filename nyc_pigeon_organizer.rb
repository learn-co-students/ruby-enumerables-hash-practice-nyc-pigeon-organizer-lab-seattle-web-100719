def nyc_pigeon_organizer(data)
  # write your code here!
  organizer = {}
  data.keys.each do |category|
    data[category].keys.each do |quality|
      data[category][quality].each do |name|
      if not organizer[name]
        organizer[name] = {category => ["#{quality}"]}
      else
        if not organizer[name][category]
          organizer[name][category] = ["#{quality}"]
        else
          organizer[name][category].push("#{quality}")
        end
        end
      end
    end
  end
  return organizer
end

