=begin
There's a dental office called Dental People Inc.

Within this office, there's 2 oral surgeons, 2 
orthodontists, 1 general dentist.

+ Both general dentists and oral surgeons can pull teeth.

+ Orthodontists cannot pull teeth.  Orthodontists straighten teeth

+ All of these aforementioned specialties are dentists.

+ All dentists graduated from dental school. 

+ Oral surgeons place implants.

+ General dentists fill teeth
=end

class DentalOffice
  def initialize(name, staff)
    @name = name
    @staff = staff
  end
end

class Dentist
  GRADUATED = true

end

class OralSurgeon < GeneralDentist
  def place_implant(patient)
  end
end

class Orthodontist < Dentist
  def straighten_teeth(patient)
  end
end

class GeneralDentist < Dentist
  def fill_teeth(patient)
  end
end

# Within this office, there's 2 oral surgeons, 2 
# orthodontists, 1 general dentist.

staff = [
  OralSurgeon.new,
  OralSurgeon.new,
  Orthodontist.new,
  Orthodontist.new, 
  GeneralDentist.new
]
dental_people_inc = DentalOffice.new("Dental People Inc.", staff)