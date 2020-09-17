#library("Mass")
library('ggplot2')

#categorical data please use factor type
# numerical data please use numeric type

#example_data 'iris'
main <- function()
{
  data('iris')
  plot_sep(iris)
}



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

plot_sep <-function(df)
{
  num_col = type_col(df)$numeric
  cat_col = type_col(df)$categorical
  
  # single variable: num - boxplot, histogram cat - barchart, 
  for( i in c(1:length(num_col)))
  {
    p <- ggplot(data = df, aes_string( y = colnames(df)[num_col[i]] )) + 
          geom_boxplot() + ggtitle( "Numerical" )
    print(p)
    p <- ggplot(data = df, aes_string( x = colnames(df)[num_col[i]] ))+ 
          geom_histogram() + ggtitle( "Numerical" )
    print(p)
  }

  for( i in c(1:length(cat_col)))
  {
    p <- ggplot(data = df, aes_string( x = colnames(df)[cat_col[i]] )) +
      geom_bar() + ggtitle( "Categorical" )
    print(p)
   
  }
  
  # muliti-variable
    #pair plot
  
}



# 
data_summary<-function()
{
  return()
}



# sample


train_test_split<-function()
{

  return()
}


  
  
#  
cross_validation<-function()
{
  
  return()
}                       
                       
main()

  
  
