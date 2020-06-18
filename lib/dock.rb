class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log,
              :revenue

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
    @revenue = 0
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    charge = {}
    renter = @rental_log[boat]
    if boat.hours_rented >= max_rental_time
      hours = max_rental_time
    else
      hours = boat.hours_rented
    end
    cost = hours * boat.price_per_hour
    charge[:card_number] = renter.card_number
    charge[:amount] = cost
    charge
  end

  def log_hour
    @rental_log.each do |boat,_|
      boat.add_hour
    end
  end

  def return(boat)
    @revenue += charge(boat)[:amount]
    @rental_log.delete(boat)
  end
end
