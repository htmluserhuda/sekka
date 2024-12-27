import pandas as pd


data = pd.read_csv('path_to_your_file.csv')  # ضعي هنا مسار الملف الخاص بك

relevant_columns = ['age', 'avg_glucose_level', 'bmi']

for column in relevant_columns:
    mean = data[column].mean()           
    median = data[column].median()     
    mode = data[column].mode()[0]        
    std_dev = data[column].std()        
    variance = data[column].var()    
    

    print(f"Statistics for {column}:")
    print(f"Mean: {mean}")
    print(f"Median: {median}")
    print(f"Mode: {mode}")
    print(f"Standard Deviation: {std_dev}")
    print(f"Variance: {variance}")
    print("----------")
