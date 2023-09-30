#1 create a vector using : operator
  
  #a.Sequence from -5 to 5
  Vector <-(-5:5)
  Vector
  #The output displayed is the sequence from -5 to 5.
  
  #b. x <- 1:7. What will be the value of x
  x <- 1:7
  x
  #The value of x is 1 2 3 4 5 6 7

  
#2 Create a vector using seq()function
  vectorseq <-seq(1, 3, by=0.2)
  vectorseq
  #The output is the sequence from 1 to 3 with incrementation of 0.2 between each number.

  
#3 A factory has a census of workers
  ages <-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
           22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43,
           53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48,
           27, 39, 19, 30 ,61, 54, 58, 26, 18)
  
      #a Access 3rd element, what is the value?
      element_3 <- ages[3]
      element_3
      #The value is 22.
  
      #b Access 2nd and 4th element, what are the values?
      element_2_and_4 <-ages[c(2,4)]
      element_2_and_4
      #The values are 28 and 36.
   

      #c Access, all but the 4th and 12th element is not included.
      element_4_and_12 <-ages[c(-4,-12)]
      element_4_and_12
      #Output is 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18
      
    
#4 Create vector x <-c("first"=3, "second"=0, "third"=9)
  vectorx <-c("first"=3, "second"=0, "third"=9)
  vectorx
    
    #a
    vectorx[c("first", "third")]
    #The output will be first,which is 3 and third, which is 9 since those are the values being asked.
    
      
#5 Create a sequence from x from -3:2
  x <-(-3:2)
  x
      
    #a Modify 2nd element and change it to 0;
    x[2]<- 0
    x
    #It changes the value of the 2nd element to 0.

    
#6 The following data shows the diesel fuel purchased by Mr.Cruz
  #a Create data frame for month, price per liter (php) and purchase-quantity(liter)
  months <-c("Jan", "Feb", "March", "Apr", "May", "June")
  price_per_liter <-c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
  purchase_quantity <-c(25, 30, 40, 50, 10, 45)
  
  fuel_data <- data.frame(Month = months, Price_per_liter = price_per_liter, Purchase_quantity_liters = purchase_quantity)
  fuel_data
  
  #b What is the average fuel expenditure of Mr.Cruz from Jan to June?
  PricePerLiter = c(52.50,57.25,60.00,65.00,74.25,54.00)
  Purchasequantity = c(25,30,40,50,10,45)
  weighted.mean(PricePerLiter, Purchasequantity)

    
#7 Rivers
  #a Create a vector data
  data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
              sd(rivers), min(rivers), max(rivers))
  data


#8 25 most powerful celebrities
  #a Create vectors according to the above table 
  PowerRanking <-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
                   21,22,23,24,25)
  CelebrityName <-c("Tom Cruise", "Rolling Stones", "Oprah Winfrey",
                    "U2", "Tiger Woods", "Steven Spielberg",
                    "Howard Stern", "50 Cent", "Cast of the Sopranos",
                    "Dan Brown", "Bruce Springsteen", "Donald Trump",
                    "Muhammad Ali", "Paul McCartney", "George Lucas",
                    "Elton John", "David Letterman", "Phil Mickelson",
                    "J.K Rowling", "Bradd Pitt", "Peter Jackson",
                    "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
  celebrity_pay <-c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55,
                    44, 55, 40, 244, 34, 40, 47, 75, 25, 39, 35, 32, 40, 31)
  
  Ranking <- data.frame(
    Power_Ranking = PowerRanking,
    Celebrity_Name = CelebrityName,
    Pay = celebrity_pay
  )
  View(Ranking)
  

  #b Modify the power ranking and pay of J.K Rowling
  Ranking$Power_Ranking[Ranking$Celebrity_Name == "J.K Rowling"] <- 15
  Ranking$Pay[Ranking$Celebrity_Name == "J.K Rowling"] <- 90
  Ranking
  View(Ranking)
  
  #c Create an excel file from the table above and save it as csv file(PowerRanking)
  write.csv(Ranking, "/cloud/project/PowerRanking.csv")
  PowerRanking <-read.csv("PowerRanking.csv")
  PowerRanking
  
  #d Access the rows 10 to 20 and save it as Ranks.RData 
  Rows <- Ranking[10:20,]
  save(Rows, file="Ranks.RData")
  View(Rows)
  
  #e It selects the rows from 10 to 20 from the data frame.

  
#9 Hotels-Vienna
  #a Import the excel file
  library(readxl)
  hotels_vienna <-read_excel("hotels-vienna.xlsx")
  View(hotels_vienna)
  
  #b How many dimensions does the data set have?
  dimofhotel_vienna <-dim(hotels_vienna)
  dimofhotel_vienna
  
  #c
  colnames(hotels_vienna)
  Columns<-hotels_vienna[c("country","neighbourhood","price","stars","accommodation_type","rating")]
  Columns
  View(Columns)
  
  #d
  save(Columns, file = "new.RData")
  View(Columns)
  
  #e
  load("new.RData")
  Columns
  
  head_six <-head(Columns)
  tail_six <-tail(Columns)
  View(head_six)
  View(tail_six)

#10 Create a list of ten(10) vegetables eaten during your lifetime 
  #a.
  Vegetables_list <-list("Pumpkin","Okra","Eggplant","Onion","Tomato","Carrots","Garlic","Ampalaya","Cabbage","Sayote")
  Vegetables_list
  
  #b Add 2 additional vegetables after the last vegetables
  Add_Vegetables_list <-append(Vegetables_list,c("Brocolli","Monggo"))
  Add_Vegetables_list
    
  #c Add 4 additional vegetables after index 5
  New_list <-append(Add_Vegetables_list,c("Cucumber","Ginger","Mushroom","Corn"),after = 5)
  New_list
  
  #d Remove the vegetables in index 5, 10 and 15. How many vegetables were left?
  Remove_Vegetables <-New_list [c(-5, -10, -15)]
  Remove_Vegetables
