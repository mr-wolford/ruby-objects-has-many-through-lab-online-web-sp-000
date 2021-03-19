require 'pry'

class Doctor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
    binding.pry
  end

  def appointments
    Appointment.all.select {|x| x.doctor == self}
  end

end
