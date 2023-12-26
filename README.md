# Instructions to build this dockerfile

## Build the Docker Image:

Open your terminal or command prompt.

Navigate to the root folder of your project where the docker-compose-ml.yml file is located.

Run the following command to build the custom Docker image from the Dockerfile in the "ml" folder:

```
docker build -t learn_nn:latest .
```

## Start JupyterLab:

After updating the docker-compose-ml.yml file, you can start JupyterLab using the custom image with the following command from the root folder:

```
docker-compose -f docker-compose-ml.yml up -d
```

This will use the custom image you built and defined in your docker-compose-ml.yml file to start JupyterLab.

Now, you should have JupyterLab running with the custom image that includes all the packages you specified in the "ml" folder's Dockerfile. You can access JupyterLab in your web browser as usual.

## Library Descriptions

Here's a brief description of each library installed in this image:

- **pandas:** A powerful data manipulation library for data analysis in Python.
- **numpy:** A fundamental package for scientific computing with Python, providing support for arrays and matrices.
- **scipy:** An open-source library used for advanced mathematical and statistical operations in Python.
- **scikit-learn:** A machine learning library for Python that provides tools for data mining and data analysis.
- **seaborn:** A data visualization library based on Matplotlib that provides a high-level interface for creating informative and attractive statistical graphics.
- **matplotlib==3.4.3:** A 2D plotting library for Python, used for creating static, animated, and interactive visualizations.
- **xgboost:** An efficient and scalable gradient boosting library for machine learning tasks.
- **boto3:** The Amazon Web Services (AWS) SDK for Python, allowing interaction with AWS services.
- **fsspec:** A unified interface for working with different filesystem-like protocols in Python.
- **nltk:** The Natural Language Toolkit, a library for working with human language data.
- **geos:** A library for performing geometric operations, often used in GIS (Geographic Information Systems) applications.
- **cartopy:** A library for cartographic projections and geospatial data visualization.


