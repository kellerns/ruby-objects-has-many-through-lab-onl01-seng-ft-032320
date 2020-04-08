class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
      Appointment.all.select do |appointment|
        appointment.patient == self
      end
  end

  def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)
  end

  def doctors
      appointments.map do |appmt|
        appmt.doctor
      end
  end


  def self.all
    @@all
  end



end
