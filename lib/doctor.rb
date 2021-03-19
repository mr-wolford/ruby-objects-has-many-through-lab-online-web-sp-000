class Doctor
  attr_reader :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    @appointment = Appointment.new(date, self, patient)
  end

end
