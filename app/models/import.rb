require 'csv'

class Import
  def self.perform
    file = File.join Rails.root, "sf_movies.csv"
    counter = 0
    CSV.foreach(file, headers: true, header_converters: :symbol, col_sep: ',') do |row|
      movie = assign_from_row(row)
      if movie.save
        counter += 1
      else
        puts "Line #{$.} - movie.errors.full_messages.join(",")}"
      end
    end
    counter
  end

  def self.assign_from_row(row)
    movie = Movie.where(title: row[:title]).first_or_initialize
    movie.assign_attributes(row.to_hash.slice(:release_year, :production_company, :distributor, :director, :writer))

    add_fun_facts(movie, row[:fun_facts]) unless row[:fun_facts].blank?
    add_locations(movie, row[:locations]) unless row[:locations].blank?
    add_actors(movie, row[:actor_1], row[:actor_2], row[:actor_3])

    movie
  end

  def self.add_fun_facts(movie, fun_fact)
    record = FunFact.find_or_create_by(description: fun_fact)
    movie.fun_facts << record if (record.present? && !movie.fun_fact_ids.include?(record.id))
  end

  def self.add_locations(movie, location)
    location = Location.find_or_create_by(name: location)
    movie.locations << location if (location.present? && !movie.location_ids.include?(location.id))
  end

  def self.add_actors(movie, actor_1, actor_2, actor_3)
    [actor_1, actor_2, actor_3].each do |actor_param|
      if actor_param.present?
        actor = Actor.find_or_create_by(name: actor_param)
        movie.actors << actor if (actor.present? && !movie.actor_ids.include?(actor.id))
      end
    end
  end
end