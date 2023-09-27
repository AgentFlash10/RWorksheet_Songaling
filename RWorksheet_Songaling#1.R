#1 vector

  age<- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
  35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 42, 53, 41,
  51, 35, 24, 33, 41)
  
#data points
  length(age)
  
#2 reciprocal age
  reciprocal_age <-1/age
  reciprocal_age

#3 assign also new_age
  new_age <-c(age,0,age)
  new_age
  
#4 sort the values for age
  sorted_age <-sort(age)
  sorted_age

#5 minimum and maximum value for age
  min_age <-min(age)
  max_age <-max(age)
  
  min_age
  max_age
  
#6 data
  data <-c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
           2.5, 2.3, 2.4, 2.7)
  data
  
#7 new vector for data where you double every value of the data
  doubled_data <-c(2 * data)
  doubled_data

#8 generate a sequence
  int_1to100 <-seq(1,100)
    int_1to100

  int_20to60 <- seq(20,60)
    int_20to60
    
  int_51to91 <- seq(51,91)
    int_51to91
    
  int_1to1000 <-seq(1,1000)
    int_1to1000

    #data points from 8.1 to 8.4
      vector <-length(seq(1,100)) + length(seq(20,60)) + length(mean(20,60)) + length(sum(51,91))
      
    #c. maximum data points until 10
        maxint1to1000 <-(1:10) #[1:2:3:4:5:6:7:8:9:10]
        maxint1to1000

#9 Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7
    add_Filter <-Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
    add_Filter

#10 Generate a sequence backwards of the integers from 1 to 100
  backwards_seq <-(100:1)
  backwards_seq
    
#11 List all the natural numbers below 25 that are multiples of 3 or 5
  multiples <-Filter(function(i) {all (i%%3 ==0 | i%%5 ==0)!= 0}, seq (24,1))
  multipleClasses
  
    addMultiples <- sum(multiples)
    addMultiples
                                        
#12 Enter statement
  { x <- 0+ x + 5 }
  

#13 Set up a vector named score, consisting of 72, 86, 92, 63, 88, 89, 91, 92, 75,75 and 77. To access individual elements of an atomic vector, one generally uses the x[i]construction.
  scoreVector <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
  
  score1 <- scoreVector[2]
  score2 <- scoreVector[3]
  
  print(score1)
  print(score2)

#14 Create a vector a = c(1,2,NA,4,NA,6,7)
  a = c(1,2,NA,4,NA,6,7)
  print(a,na.print="-999")
  


#15. A special type of function calls can appear on the left hand side of the assignmentoperator as in > class(x) <- "foo".
    
    name = readline (prompt = "Input your name: ")
    
    age = readline(prompt = "Input your age: ")
    
    print (paste("My Name is", name, "and I am", age, "years old"))
    
    print (R.version.string)
    
    #What is the output of the above code?
    
    #the above code is about the information of the user and what they input on the name and age will be displayed.



                                         
                                         
        
      

  