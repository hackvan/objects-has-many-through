class Doctor
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointment(patient, date)
    return Appointment.new(date, patient, self)
  end

  def appointments
    return Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    return appointments.map { |appointment| appointment.patient }
  end
end