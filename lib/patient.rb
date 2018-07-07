class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointment(doctor, date)
    return Appointment.new(date, self, doctor)
  end

  def appointments
    return Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }
  end
end