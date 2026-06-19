import pandas as pd
import numpy as np
df=pd.read_excel("C:\\Users\\INDU\\OneDrive\\Desktop\\Data Analytics\\Python Class\\Assignment_Retail_Sales_Analysis_Data.xlsx")
df
#data cleaning
df.isnull().sum()

# Replace invalid values with NA
df["Age"] = df["Age"].replace([0, 120, 150], pd.NA)

# Replace negative values with NA
df.loc[df["Age"] < 0, "Age"] = pd.NA

# Fill all age missing values with mean
df["Age"].mean()
df["Age"]=df["Age"].fillna(df["Age"].mean()).astype(int)
df

#filling the unitprice missing values with mean
df["UnitPrice"].mean()
df["UnitPrice"]=df["UnitPrice"].fillna(df["UnitPrice"].mean()).astype(int)
df

#filling the discount ,issing values 
df["Discount"].mean()
df["Discount"]=df["Discount"].fillna(df["Discount"].mean()).astype(int)
df

#Changing product null values
df["Product"]=df["Product"].str.title()
df
df["Product"].mode()
df["Product"]=df["Product"].fillna(df["Product"].mode()[0])
df

#replace sales negatives values to nan
df.loc[df["Sales"] < 0, "Sales"] = np.nan
df

#replace sales nan to mean
df["Sales"].mean()
df["Sales"]=df["Sales"].fillna(df["Sales"].mean()).astype(int)
df

#replace cost nan to mean
df["Cost"].mean()
df["Cost"]=df["Cost"].fillna(df["Cost"].mean()).astype(int)
df

#replace profit nan to mean
df["Profit"].mean()
df["Profit"]=df["Profit"].fillna(df["Profit"].mean()).astype(int)
df
df.isnull().sum()

#replace ratings nan to mean
df["Rating"].mean()
df["Rating"]=df["Rating"].fillna(df["Rating"].mean()).astype(int)
df

#Convert order_date to datetime datatype
df.info()
df["OrderDate"] = pd.to_datetime(df["OrderDate"], format="mixed")
df["OrderDate"].dtype
df
#To check the duplicate columns
df[df["OrderID"] == 1099]
#removed the duplicate column 
df = df.drop_duplicates()
df

df.isnull().sum()
#checking each names are equal or not
df["Region"]=df["Region"].str.title()
df
df["Region"].unique()
df["State"].unique()
df["State"] = df["State"].replace({
    'telangana': 'Telangana',
    'TELANGANA': 'Telangana',
    'TG': 'Telangana',
    'Telengana': 'Telangana'
})
df 
df["City"].unique()
df["City"] = df["City"].replace({
    "HYD": "Hyderabad",
    "Hyd": "Hyderabad",
    "hyderabad": "Hyderabad",
    " HYD " : "Hyderabad",
    "New Delhi": "Delhi",
    "Calcutta" : "Kolkata",
    "Bombay" : "Mumbai",
    "Bengaluru":"Bangalore",
    "BLR" : "Bangalore",
    "Kochi" : "Cochin",
    "Panjim":"Panaji",
    "Madras":"Chennai",
    "BBSR":"Bhubaneswar"
})
df 
df["CustomerName"].unique()
df["Gender"].unique()
df["Gender"]=df["Gender"].str.title()
df
df["Gender"]= df["Gender"].replace({
    "male":"Male",
    "M":"Male",
    "female":"Female",
    "F":"Female"
     })
df
df["Product"].unique()
df.isnull().sum()
df["Category"]=df["Category"].str.title()
df
df["Category"].unique()
df["SalesRep"]=df["SalesRep"].str.title()
df
df["SalesRep"].unique()
df["Channel"]=df["Channel"].str.title()
df
df["Channel"].unique()
df["PaymentMode"].unique()
df["PaymentMode"]=df["PaymentMode"].str.title()
df
df["PaymentMode"].mode()
df["PaymentMode"]=df["PaymentMode"].fillna(df["PaymentMode"].mode()[0])
df
df["PaymentMode"]=df["PaymentMode"].replace({
    "UPI":"Upi",
    "upi":"Upi",
    "GooglePay":"Gpay",
    "Googlepay":"Gpay"
     })
df
df.info()
#replace quantity with nan
df["Quantity"].unique()

#change abc to nan
df["Quantity"] = df["Quantity"].replace(["abc"], np.nan)

#changing negative values to nan
df.loc[df["Quantity"] < 0, "Quantity"] = np.nan
df

#change nan to mean
df["Quantity"].mean()
df["Quantity"]=df["Quantity"].fillna(df["Quantity"].mean()).astype(int)
df
df.info()

#Change deliverydays from 45 to nan and nan to mean
df["DeliveryDays"].unique()
df.loc[df['DeliveryDays'] == 45, 'DeliveryDays'] = np.nan
df["DeliveryDays"].mean()
df["DeliveryDays"]=df["DeliveryDays"].fillna(df["DeliveryDays"].mean()).astype(int)
df
df.info()

#change returned nan to mode 
df["Returned"].unique()
df["Returned"].mode()
df["Returned"]=df["Returned"].fillna(df["Returned"].mode()[0])
df

df.info()
df.isnull().sum()

#customer bucketaizzation high,low,avg
mean_sales=df["Sales"].mean()

df["Customer Bucket"] = df["Sales"].apply(
    lambda x: "Low" if x < mean_sales * 0.8
    else "Average" if x <= mean_sales * 1.2
    else "High"
)
df

#Sales category with low,avg,high
mean_sales = df["Sales"].mean()

df["Sales Category"] = df["Sales"].apply(
    lambda x: "High" if x > mean_sales
    else "Low" if x < mean_sales
    else "Average"
)
df

df["Rating"].unique()
#rating 1-7
df["Rating Category"] = df["Rating"].replace({
    1: "Very Poor",
    2: "Poor",
    3: "Fair",
    4: "Average",
    5: "Good",
    6:"Very Good",
    7:"Excellent"
})
df
df["Rating Category"].unique()
#delivery days >5
df["Delivery Status"] = df["DeliveryDays"].apply(
    lambda x: "Delayed" if x > 5 else "On Time"
)
df
#profit %
df["Profit %"] = (df["Profit"] / df["Sales"]) * 100
df

#paymentmode
df["PaymentMode"].unique()
df["Payment Category"] = df["PaymentMode"].replace({
    "Upi": "Online",
    "Card": "Online",
    "Cash": "Offline"
})
df
#one customer how many times repeated >1=frequent buyer <1 not frequent
customer_count = df["CustomerName"].value_counts()

df["Buyer Type"] = df["CustomerName"].map(
    lambda x: "Frequent Buyer" if customer_count[x] > 1 else "Not Frequent"
)
df
# divide years,month,day of orderdate
df["Year"] = df["OrderDate"].dt.year
df
df["Month"] = df["OrderDate"].dt.month
df
df["Day"] = df["OrderDate"].dt.day
df
df["Quarter"] = df["OrderDate"].dt.quarter
df
df.shape
