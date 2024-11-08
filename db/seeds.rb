puts "Seeding DB"
engineering = Department.create(name: "Engineering", 
                               description: "This is a great department")
engineering.cover.attach(io: File.open("db/images/eng_cover.png"), filename: "eng_cover")

marketing = Department.create(name: "Marketing", 
                              description: "This is a great department")
marketing.cover.attach(io: File.open("db/images/mkt_cover.png"), filename: "mkt_cover")

operations = Department.create(name: "Operations", 
                               description: "This is a great department")
operations.cover.attach(io: File.open("db/images/op_cover.png"), filename: "op_cover")

emmet = Employee.create(name: "Emmet Bart", 
                            role: "Software Developer", 
                            department: engineering, 
                            nationality: "Peru", 
                            birth_date: 31.years.ago)
emmet.avatar.attach(io: File.open("db/images/emmet.png"), filename: "emmet")

alva = Employee.create(name: "Alva Galia", 
                            role: "Senior Software Developer", 
                            department: engineering, 
                            nationality: "Mexico", 
                            birth_date: 35.years.ago)
alva.avatar.attach(io: File.open("db/images/alva.png"), filename: "alva")

rico = Employee.create(name: "Rico Cornelius", 
                            role: "Apprentice", 
                            department: engineering, 
                            nationality: "Peru", 
                            birth_date: 21.years.ago)
rico.avatar.attach(io: File.open("db/images/rico.png"), filename: "rico")

mario = Employee.create(name: "Mario Testino", 
                role: "Manager", 
                department: marketing, 
                nationality: "Bolivia", 
                birth_date: 30.years.ago)
testino = Employee.create(name: "Testino Diprueba", 
                role: "Social Media Creator", 
                department: marketing, 
                nationality: "Peru", 
                birth_date: 25.years.ago)

john = Employee.create(name: "John Doe", 
                role: "Operation Manager", 
                department: operations, 
                nationality: "Peru", 
                birth_date: 38.years.ago)
johana = Employee.create(name: "Johana Doe", 
                role: "Logistic Supervisor", 
                department: operations, 
                nationality: "Bolivia", 
                birth_date: 27.years.ago)