
library("Mass")
library('ggplot')

#categorical data please use factor type
# numerical data please use numeric type

#example_data 'iris'

data('iris')
iris


#gets all variables type
type_col<- function(df)
{
  x = c()
  num <- c()
  cate <- c()  
  
  for( i in c( 1:length(df) ) )
  {
    dum = class( df[1,i] )
    x[i] <- dum 
    
    if( dum == 'factor' )
    {
      cate[ length(cate) + 1 ] = i
    }
    else
    {
      num[ length(num) + 1 ] = i
    }
  }
  
  class_of_var = factor(x)
  
  need = list(class = class_of_var, numeric = num, categorical = cate)
  return(need)
}


#EDA


# input: dataframe, output:plot

plot(df)
{
  num_col = type_col(df)[ 'numeric' ]
  cat_col = type_col(df)[ 'categorical' ]
  
  # single variable: num - boxplot 
  
  
  # muliti-variable
    #pair plot
  
  
  
  return
}



# 
data_summary()
{
   return 
}



# sample


train_test_split()
{
  
  
  return 
}


  
  
#  
cross_validation()
{
  
  return
}                       
                       
  

  
  
