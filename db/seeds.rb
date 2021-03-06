
   company1 = Company.find_or_create_by!({ name: "Josh Software", email: "all@joshsoftware1.com", phone_no: 9867542190 })
   company2 = Company.find_or_create_by!({ name: "Veritas", email: "all@veritas1.com", phone_no: 9867542195 })
   company3 = Company.find_or_create_by!({ name: "Pubmatic", email: "all@pubmatic1.com", phone_no: 9867542196 })
   company4 = Company.find_or_create_by!({ name: "Symantec", email: "all@symantec1.com", phone_no: 9867542197 })
   company5 = Company.find_or_create_by!({ name: "Agrostar", email: "all@agrostar1.com", phone_no: 9867542198 })

   company1.create_address({ house_no: "GHIB92", locality: "kupwad", city: "Sangli", state: "Maharashtra", pincode: 416415 }) if company1.address.blank?
   company2.create_address({ house_no: "WNIB42", locality: "Kharadi", city: "Panji", state: "Goa", pincode: 411045 }) if company2.address.blank?
   company3.create_address({ house_no: "WNk086", locality: "Aagarkar Nagar", city: "Indore", state: "Madhya Pradesh", pincode: 419045 }) if company3.address.blank?
   company4.create_address({ house_no: "WYKJK2", locality: "Majage Nagar", city: "Pune", state: "Maharashtra", pincode: 411045 }) if company4.address.blank?
   company5.create_address({ house_no: "WNIB42", locality: "Vishrambag", city: "Solapur", state: "Maharashtra", pincode: 418945 }) if company5.address.blank?
   
   vendor1 = Vendor.find_or_create_by({ name: "Foodpanda", phone_no: 7798845221, logo: "foodpandalogo.jpg" })
   vendor2 = Vendor.find_or_create_by({ name: "Chaitanya Parathas", phone_no: 7798845222, logo: "parathalogo.png" })
   vendor3 = Vendor.find_or_create_by({ name: "Venkys", phone_no: 7798845223, logo: "vankylogo.jpg" })
   vendor4 = Vendor.find_or_create_by({ name: "Rollsmania", phone_no: 7798845224, logo: "rollsmania.jpg" })
   vendor5 = Vendor.find_or_create_by({ name: "Dominoz", phone_no: 7798845225, logo: "dominozlogo.jpg" })

   vendor1.addresses.find_or_create_by({ house_no: 'GHIB93', locality: 'kupwad',city: "Sangli", state: "Maharashtra", pincode: 416415 })
   vendor2.addresses.find_or_create_by({ house_no: 'WNIB43', locality: 'Kharadi',city: "Panji", state: "Goa", pincode: 411045 })
   vendor3.addresses.find_or_create_by({ house_no: 'WNk083', locality: 'Aagarkar Nagar', city: "Indore", state: "Madhya Pradesh", pincode: 419045 })
   vendor4.addresses.find_or_create_by({ house_no: 'WYKJK3', locality: 'Majage Nagar', city: "Pune", state: "Maharashtra", pincode: 411045 })
   vendor5.addresses.find_or_create_by({ house_no: 'WNIB43', locality: 'Vishrambag', city: "Solapur", state: "Maharashtra", pincode: 418945 })

   # user1 = User.find_or_create_by
   # user2 = User.find_or_create_by({ name: "Sanjeev Nath", email: "sanjeev@gmail.com", phone_no: 9867542196 ,active: true,role: "Employee",company_id: company2.id,password: "heyyfddo"}).save!
   # user3 = User.find_or_create_by!({ name: "Sapna Kumari", email: "sapna@gmail.com", phone_no: 9867542199,active: true,role: "Employee",company_id: company3.id ,password: "yesmandfdf"})
   # user4 = User.find_or_create_by!({ name: "Namrata Bhat", email: "nambhat@gmail.com", phone_no: 9867542197,active: true,role: "Employee",company_id: company4.id,password: "23456777" })
   # user5 = User.find_or_create_by!({ name: "Deepak Sharma", email: "deepu@gmail.com", phone_no: 9867542190 ,active: true,role: "Employee",company_id: company4.id,password: "pjoonefdf"})    
   user1 = company1.users.find_or_create_by({ name: "Sanjeev Nath", email: "sanjeev@gmail.com", phone_no: 9867542196 ,active: true,role: "Employee",password: "heyyfddo"})
   user1.create_address({ house_no: "GHIB94", locality: "kupwad", city: "Sangli", state: "Maharashtra", pincode: 416415 }) if user1.address.blank?
   p "company2", company2
   user2 = company2.users.find_or_create_by(name: "Ankit Sharma", email: "bhuvna@joshsoftware.com", phone_no: 9867542191, active: true,role: "hr",password: "12345fdfd")
   p "user", user2
   user2.create_address({ house_no: "WNIB44", locality: "Kharadi", city: "Panji", state: "Goa", pincode: 411045 }) if user2.address.blank?
   
   # user2.create_address({ house_no: "WNIB44", locality: "Kharadi", city: "Panji", state: "Goa", pincode: 411045 }) if user2.address.blank?
   # user3.create_address({ house_no: "WNk084", locality: "Aagarkar Nagar", city: "Indore", state: "Madhya Pradesh", pincode: 419045 }) if user3.address.blank?
   # user4.create_address({ house_no: "WYKJK4", locality: "Majage Nagar", city: "Pune", state: "Maharashtra", pincode: 411045 }) if user4.address.blank?
   # user5.create_address({ house_no: "WNIB44", locality: "Vishrambag", city: "Solapur", state: "Maharashtra", pincode: 418945 }) if user5.address.blank?

   
   menuarray= [{name:"Veg Biryani", price:140, veg:true, image:"foodpandamenu1.jpg"}, {name:"Thaali", price:60, veg:false, image:"foodpandamenu2.jpg"},
               {name:"Burger", price:80, veg:false, image:"foodpandamenu3.jpg"},{name:"Chicken Chilly", price:140, veg:true, image:"foodpandamenu4.jpg"},
               {name:"Sweet Dish", price:150, veg:true, image:"foodpandamenu5.jpg"}]
   menuarray.each do |menu|
      vendor1.menu_items.find_or_create_by(menu).save!
   end
  
   menuarray2=[{name:"Paneer Paratha",price:60,veg:true, image:"paratha1.jpg"}, {name:"Paratha Sauce", price:25, veg:false, image:"paratha2.jpg"},
               {name:"VegParatha", price:70, veg:true, image:"paratha3.jpg"}] 
   menuarray2.each do |menu|
      vendor2.menu_items.find_or_create_by(menu)
   end
 
   menuarray3= [{name:"Chicken Lolipop", price:140, veg:true, image:"vankymenu1.jpg"},{name:"Masala Fish", price:160, veg:false, image:"vankymenu2.jpg"},
                {name:"Aaloo Cheeps", price:180, veg:false, image:"vankymenu3.jpg"}]
   menuarray3.each do |menu|
      vendor3.menu_items.find_or_create_by(menu)
   end

   menuarray4= [{name:"Veg Roll", price:140, veg:true, image:"rollsmenu1.jpg"},{name:"Aaloo sticks Roll", price:160, veg:true, image:"rollsmenu2.jpg"},
                {name:"Aaloo Roll", price:180, veg:true},{name:"Paneer Roll", price:180, veg:true, image:"rollsmenu3.jpg"}]
   menuarray4.each do |menu|
      vendor4.menu_items.find_or_create_by(menu)
   end

   menuarray5= [{name:"Veg Pizza", price:140, veg:true, image:"pizza1.jpg"},{name:"Classic Pizza", price:160, veg:true, image:"pizza2.jpg"}]
   menuarray5.each do |menu|
      vendor5.menu_items.find_or_create_by(menu)
   end
