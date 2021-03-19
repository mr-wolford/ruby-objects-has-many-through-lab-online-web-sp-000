class Patient
  attr_reader :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|x| x.patient == self}
  end

  def self.all
    @@all
  end

  def doctors
    self.appointments.map {|x| x.doctor}
  end

end
