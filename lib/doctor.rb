<<<<<<< HEAD
class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    appointments.map{|appt| appt.patient}
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end
end
=======
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
    Appointment.new(date, patient, self)
  end 
  
  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self}
  end 
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
  
    
end 
>>>>>>> 6c12b9a5d20a5dcbab5f6ade0bc974002805d217
