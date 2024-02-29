from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.datasets import load_diabetes
import matplotlib.pyplot as plt

# Load the dataset
X, y = load_diabetes(return_X_y=True)

# Use only one feature (e.g., the third feature)
X = X[:, 2].reshape(-1, 1)

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Initialize the linear regression model
model = LinearRegression()

# Train the model with the training data
model.fit(X_train, y_train)

# Make predictions on the test set
y_pred = model.predict(X_test)

# Calculate the model error (e.g., mean squared error)
from sklearn.metrics import mean_squared_error
mse = mean_squared_error(y_test, y_pred)
print(f"Mean Squared Error: {mse}")

# Visualize the actual vs. predicted values
plt.scatter(X_test, y_test, color='black', label='Actual Values')
plt.plot(X_test, y_pred, color='blue', linewidth=3, label='Predictions')
plt.xlabel('Engine Power')
plt.ylabel('Fuel Efficiency')
plt.title('Actual vs. Predicted Values')
plt.legend()
plt.show()
