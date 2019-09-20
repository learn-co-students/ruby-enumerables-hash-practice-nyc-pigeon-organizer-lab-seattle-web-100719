def nyc_pigeon_organizer(data)
  pigeon_names = []
  data.each do |key, value|
    value.each do |k, v|
      pigeon_names += v
    end
  end
  pigeon_names.uniq!

  sorted_pigeons = {}

  pigeon_names.each do |pigeon|
    x = data[:color]
    y = data[:gender]
    z = data[:lives]

    x_sorted = []
    y_sorted = []
    z_sorted = []

    x.each { |key,value| x_sorted << key.to_s if value.include?"#{pigeon}" }
    y.each { |key,value| y_sorted << key.to_s if value.include?"#{pigeon}" }
    z.each { |key,value| z_sorted << key.to_s if value.include?"#{pigeon}" }

    sorted_pigeons[pigeon] = {
      color: x_sorted,
      gender: y_sorted,
      lives: z_sorted
    }
  end
  sorted_pigeons
end
