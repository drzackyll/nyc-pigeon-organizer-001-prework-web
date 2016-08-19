def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, detail|
    detail.each do |type, name_array|
      name_array.each do |name|
        pigeon_list[name] = {}
      end
    end
  end
  pigeon_list.each do |this, that|
    data.each do |first, second|
      array = []
      second.each do |third, fourth|
        if fourth.include?(this)
          array.push(third.to_s)
        end
        pigeon_list[this][first] = array
      end
    end
  end
  return pigeon_list
end
