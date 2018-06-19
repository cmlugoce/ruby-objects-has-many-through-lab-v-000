<<<<<<< HEAD
class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def doctors
    appointments.map{|appt| appt.doctor}
  end

=======
class Patient 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end  
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  def appointments 
    Appointment.all.select{ |appointment| appointment.patient == self}
  end 
  
  def doctors 
    appointments.map{|appointment| appointment.doctor}
  end 
>>>>>>> 6c12b9a5d20a5dcbab5f6ade0bc974002805d217
end