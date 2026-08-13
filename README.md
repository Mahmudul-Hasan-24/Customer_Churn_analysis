# Customer Churn Analysis

An end-to-end data analytics project using **SQL, Python, machine learning, and Power BI** to explore customer churn, identify important churn factors, predict customer risk, and communicate the results through an interactive dashboard.

![Customer Churn Analysis Dashboard](dashboard.png)

## Project Overview

Customer churn is the percentage of customers who stop using a company's service. This project analyses customer behaviour to understand which factors are associated with churn and how those insights can support customer-retention decisions.

The workflow combines:

- **SQL** for business-focused exploratory queries
- **Python** for analysis, visualization, and predictive modelling
- **Power BI** for an interactive management dashboard

## Key Results

- Analysed **64,374 customers**
- Identified an overall churn rate of **47.4%**
- Compared churn across contract lengths and subscription types
- Examined the relationships between churn, support calls, tenure, and payment delays
- Built and evaluated Logistic Regression and Random Forest models
- Identified **payment delay**, **support calls**, and **tenure** as leading predictors in the Random Forest model
- Generated customer-level churn-risk probabilities for further dashboard analysis

## Dashboard

The Power BI dashboard includes:

- Total, churned, and retained customers
- Overall churn rate
- Churn rate by subscription type and contract length
- Customer churn by age group
- Churn patterns by support calls, tenure band, and payment delay
- Interactive filters for gender, subscription type, contract length, and age group

## Machine-Learning Results

| Model | Accuracy | Precision | Recall | F1 Score | ROC AUC |
|---|---:|---:|---:|---:|---:|
| Logistic Regression | 0.826 | 0.812 | 0.822 | 0.817 | 0.902 |
| Random Forest | 0.999 | 0.999 | 0.999 | 0.999 | 1.000 |

> **Important:** The Random Forest result is unusually high and should not be interpreted as expected real-world performance. The dataset appears to contain very clean predictive patterns, which are common in synthetic or practice datasets. Validation on independent real-world data would be required before operational use.

## Tools and Technologies

- SQL
- Python
- pandas
- Matplotlib
- Seaborn
- scikit-learn
- Power BI
- DAX
- Jupyter Notebook

## Repository Structure

```text
customer-churn-analysis/
├── README.md
├── churn_analysis.ipynb
├── Churn_Project.sql
├── customer_churn_dataset.csv
├── Customer_Churn_Dashboard.pbix
└── dashboard.png
```

## How to Run the Python Analysis

1. Clone this repository:

   ```bash
   git clone https://github.com/YOUR-USERNAME/customer-churn-analysis.git
   cd customer-churn-analysis
   ```

2. Install the required Python packages:

   ```bash
   pip install pandas matplotlib seaborn scikit-learn jupyter
   ```

3. In `churn_analysis.ipynb`, replace the local dataset path with:

   ```python
   df = pd.read_csv("customer_churn_dataset.csv")
   ```

4. Start Jupyter Notebook and run all cells:

   ```bash
   jupyter notebook
   ```

## SQL Analysis

The SQL file contains queries for:

- Total customer count
- Overall churn rate
- Churn rate by contract length
- Churn rate by subscription type
- Average support calls, payment delay, and tenure for churned versus retained customers

The queries expect a table named `customers`. Column names in the database should use underscores, as shown in the SQL file.

## Business Value

The analysis helps highlight customer groups and behaviours associated with higher churn risk. These insights can support more focused retention campaigns, proactive customer support, and earlier intervention for customers with repeated support calls or payment delays.

## Author

**Mahmudul Hasan**  
MSc Computational Social Systems — Business Analytics specialization  
NAWI Graz: University of Graz and Graz University of Technology

Connect with me on [LinkedIn](https://www.linkedin.com/in/mahmudul-hasan-764307249/).

## Disclaimer

This is a portfolio and learning project. The results are based on the supplied practice dataset and should not be used for real business decisions without additional validation.
