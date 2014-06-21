

shinyUI(pageWithSidebar(
  headerPanel("How Long Will It Last?"),
  sidebarPanel(
    numericInput('init_invest', 'Current Savings & Investments ($K)', 0, min = 0, max = 2000, step = 10),
    numericInput('annual_spend', 'Desired Annual Spending (current $K)', 0, min = 0, max = 400, step = 5),
    
    sliderInput('income_rate', 'Expected return rate on savings/investments (%)',value = 3, min = 0, max = 15, step = 0.5,),
    sliderInput('inflation_rate', 'Expected inflation rate (%)',value = 2, min = 0, max = 15, step = 0.5,),
 
    
    h3('__  '),
    h4('Instructions for How Long Will it Last?'),
    h5('Calculating how long your retirement savings will last.'),   

    p('This tool will helps you plan your retirement by'),
    p('calculating how long your investments can fund a '),
    p('desired spending level considering inflation rate'),
    p('and rate of return on your investments.'),   
    p('Enter the amount of your current investments in thousands of'),    
    p('dollars in thein the first box.  In the second box enter'),    
    p('the amount you expect to spend next year.  This amount will'),
    p('automatically be increased in future years based on the'),    
    p('inflation rate you chose.  Use the slider bars to select'),    
    p('anticipated rates of return on your investments and'),    
    p('inflation.'),    
    p('The chart on the right will show you how much money'),    
    p('you will have in each future year.')      
       
    ),

  
  mainPanel(
    plotOutput('newBar')
  )
))