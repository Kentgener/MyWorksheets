#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output.
#Describe its output.
numericVector <- seq(-5,5)
numericVector 
[1] -5 -4 -3 -2 -1  0  1  2  3  4  5
#The output will be -5 upto positive 5
#b. x <- 1:7. What will be the value of x?
x
[1] 1 2 3 4 5 6 7
#2.* Create a vector using seq() function
#a. seq(1, 3, by=0.2) # specify step size
#Write the R script and its output. Describe the output.
vecbyseq <- seq(1, 3, by=0.2)
vecbyseq
[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#The output will display 1 to 3 but with a added .2 in each
#3. A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
#18.
Fworkersage <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
18)
Fworkersage
[1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19
[18] 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41
[35] 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18
#a. Access 3rd element, what is the value?
Fworkersage[3]
[1] 22
#b. Access 2nd and 4th element, what are the values?
Fworkersage[c(2,4)]
[1] 28 36
#Access all but the 4th and 12th element is not
#included. Write the R script and its output.
Fworkersage[c(-4,-12)]
[1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57
[18] 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40
[35] 18 44 38 41 48 27 39 19 30 61 54 58 26 18
#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the
#vector, names(x).
x <- c("first"=3, "second"=0, "third"=9)
> x
first second  third 
3      0      9 
names(x)
[1] "first"  "second" "third"
#a. Print the results. Then access x[c("first", "third")].
#Describe the output.
#The result will be 3 and nine because the word "first" is equal to 3 and the 
#word "third" is equal to 9
#b. Write the code and its output.
x[c("first", "third")]
first third 
3     9 
#5. Create a sequence x from -3:2.
#The 1st output will be numbers from 1 to 6 but in the second outut the 2nd 
#element will change the number 2 into 0
#b. Write the code and its output.
x
[1] 1 2 3 4 5 6
x[2] <- 0
x
[1] 1 0 3 4 5 6
#6. *The following data shows the diesel fuel purchased by Mr. Cruz.
#a. Create a data frame for month, price per liter (php)
#and purchase-quantity (liter). Write the R scripts and
#its output.
t(byMrCruz)
[,1]    [,2]    [,3]    [,4]   
Month                  "Jan"   "Feb"   "March" "Apr"  
PricePerliter          "52.50" "57.25" "60.00" "65.00"
PurchaseQuantityLiters "25"    "30"    "40"    "50"   
[,5]    [,6]   
Month                  "May"   "June" 
PricePerliter          "74.25" "54.00"
PurchaseQuantityLiters "10"    "45"
#b. What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter,
#purchase)‘. Write the R scripts and its output.
average_expenditure <- weighted.mean(byMrCruz$PricePerliter, byMrCruz$PurchaseQuantityLiters)
average_expenditure
[1] 59.2625
#7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths
#(in miles) of 141 “major” rivers in North America, as compiled by the US Geological
#Survey”.
#a. Type “rivers” in your R console.
#Create a vector data with 7 elements, containing the number of elements (length)
#in rivers, their sum (sum), mean (mean), median(median), variance(var), standard 
#deviation(sd), minimum (min) and maximum (max).
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers)
, sd(rivers), min(rivers), max(rivers))
#b. What are the results?
[1]    141.0000  83357.0000    591.1844    425.0000
[5] 243908.4086    493.8708    135.0000   3710.0000
#c. Write the R scripts and its outputs.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers)
, sd(rivers), min(rivers), max(rivers))
> data
[1]    141.0000  83357.0000    591.1844    425.0000
[5] 243908.4086    493.8708    135.0000   3710.0000|
#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked
#by the editions of Forbes magazine and as listed on the Forbes.com website.
#a. Create vectors according to the above table.
#Write the R scripts and its output.
  data <- data.frame(
    +     "Power Ranking" = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25),
    +     "Celebrity Name" = c(
      +         "Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "David Letterman", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant"),
    +     "Pay" = c(
      +         67, 90, 255, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
    + )
pcelebdata <- data
pcelebdata
Power.Ranking       Celebrity.Name Pay
1              1           Tom Cruise  67
2              2       Rolling Stones  90
3              3        Oprah Winfrey 255
4              4                   U2 110
5              5          Tiger Woods  90
6              6     Steven Spielberg 332
7              7         Howard Stern 302
8              8              50 Cent  41
9              9 Cast of the Sopranos  52
10            10            Dan Brown  88
11            11    Bruce Springsteen  55
12            12         Donald Trump  44
13            13         Muhammad Ali  55
14            14       Paul McCartney  40
15            15         George Lucas 233
16            16           Elton John  34
17            17       Phil Mickelson  40
18            18          J.K Rowling  47
19            19           Bradd Pitt  75
20            20        Peter Jackson  25
21            21      David Letterman  39
22            22      Dr. Phil McGraw  45
23            23             Jay Leno  32
24            24          Celine Dion  40
25            25          Kobe Bryant  31
#b. Modify the power ranking and pay of J.K. Rowling.
#Change power ranking to 15 and pay to 90. Write the
#R scripts and its output.
pcelebdata[pcelebdata$`Celebrity Name` == "J.K Rowling", "Power Ranking"] <- 15
> pcelebdata[pcelebdata$`Celebrity Name` == "J.K Rowling", "Pay"] <- 90
> pcelebdata
Power.Ranking          Celebrity.Name Pay Power Ranking
1              1           Tom Cruise  67            NA
2              2       Rolling Stones  90            NA
3              3        Oprah Winfrey 255            NA
4              4                   U2 110            NA
5              5          Tiger Woods  90            NA
6              6     Steven Spielberg 332            NA
7              7         Howard Stern 302            NA
8              8              50 Cent  41            NA
9              9 Cast of the Sopranos  52            NA
10            10            Dan Brown  88            NA
11            11    Bruce Springsteen  55            NA
12            12         Donald Trump  44            NA
13            13         Muhammad Ali  55            NA
14            14       Paul McCartney  40            NA
15            15         George Lucas 233            NA
16            16           Elton John  34            NA
17            17       Phil Mickelson  40            NA
18            18          J.K Rowling  47            NA
19            19           Bradd Pitt  75            NA
20            20        Peter Jackson  25            NA
21            21      David Letterman  39            NA
22            22      Dr. Phil McGraw  45            NA
23            23             Jay Leno  32            NA
24            24          Celine Dion  40            NA
25            25          Kobe Bryant  31            NA