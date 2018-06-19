<<<<<<< HEAD
class Appointment
  attr_accessor :date, :doctor, :patient
  @@all = []
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
=======
class Appointment
  
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient 
    @doctor = doctor 
    
    @@all << self 
  end 
  
  def self.all
    @@all 
    
  end 
  
end 
>>>>>>> 6c12b9a5d20a5dcbab5f6ade0bc974002805d217
