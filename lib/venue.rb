class Venue
  attr_reader :name,
                   :capacity,
                   :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    patrons_upcased = []
    @patrons.each do |patron|
      patrons_upcased << patron.upcase
    end
    patrons_upcased
  end

  def over_capacity?
    return false if @patrons.count <= 4
      true
  end

  def kick_out
    while over_capacity?
      @patrons.shift
    end
  end
end
