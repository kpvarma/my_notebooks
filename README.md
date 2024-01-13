# Instructions to build this dockerfile

## Build the Docker Image:

Open your terminal or command prompt.

Navigate to the root folder of your project where the docker-compose-ml.yml file is located.

Run the following command to build the custom Docker image from the Dockerfile in the "ml" folder:

```
docker build -t my_notebooks:latest .
```

## Start JupyterLab:

After updating the docker-compose.yml file, you can start JupyterLab using the custom image with the following command from the root folder:

```
docker-compose -f docker-compose.yml up -d
docker-compose logs jupyterlab
docker-compose -f docker-compose.yml down
docker exec -it my_notebooks jupyter server list
```

This will use the custom image you built and defined in your docker-compose-ml.yml file to start JupyterLab.

Now, you should have JupyterLab running with the custom image that includes all the packages you specified in the "ml" folder's Dockerfile. You can access JupyterLab in your web browser as usual.

Here is a sample log structure you would see:
```
jupyterlab  | [I 2024-01-13 21:58:24.147 ServerApp] jupyterlab | extension was successfully linked.
jupyterlab  | [W 2024-01-13 21:58:24.151 NotebookApp] 'ip' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
jupyterlab  | [W 2024-01-13 21:58:24.151 NotebookApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
jupyterlab  | [W 2024-01-13 21:58:24.151 NotebookApp] 'port' has moved from NotebookApp to ServerApp. This config will be passed to ServerApp. Be sure to update your config before our next release.
jupyterlab  | [I 2024-01-13 21:58:24.157 ServerApp] nbclassic | extension was successfully linked.
jupyterlab  | [I 2024-01-13 21:58:24.158 ServerApp] Writing Jupyter server cookie secret to /home/jovyan/.local/share/jupyter/runtime/jupyter_cookie_secret
jupyterlab  | [I 2024-01-13 21:58:24.334 ServerApp] notebook_shim | extension was successfully linked.
jupyterlab  | [I 2024-01-13 21:58:24.367 ServerApp] notebook_shim | extension was successfully loaded.
jupyterlab  | [I 2024-01-13 21:58:24.368 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.8/site-packages/jupyterlab
jupyterlab  | [I 2024-01-13 21:58:24.368 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
jupyterlab  | [I 2024-01-13 21:58:24.370 ServerApp] jupyterlab | extension was successfully loaded.
jupyterlab  | [I 2024-01-13 21:58:24.373 ServerApp] nbclassic | extension was successfully loaded.
jupyterlab  | [I 2024-01-13 21:58:24.373 ServerApp] Serving notebooks from local directory: /home/jovyan
jupyterlab  | [I 2024-01-13 21:58:24.373 ServerApp] Jupyter Server 1.19.1 is running at:
jupyterlab  | [I 2024-01-13 21:58:24.373 ServerApp] http://b4132b368fba:8888/lab?token=2be040656cfe985c929e4f55e837438a3459d1bf4d48f3c1
jupyterlab  | [I 2024-01-13 21:58:24.373 ServerApp]  or http://127.0.0.1:8888/lab?token=2be040656cfe985c929e4f55e837438a3459d1bf4d48f3c1
jupyterlab  | [I 2024-01-13 21:58:24.373 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
jupyterlab  | [C 2024-01-13 21:58:24.376 ServerApp] 
jupyterlab  |     
jupyterlab  |     To access the server, open this file in a browser:
jupyterlab  |         file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
jupyterlab  |     Or copy and paste one of these URLs:
jupyterlab  |         http://b4132b368fba:8888/lab?token=2be040656cfe985c929e4f55e837438a3459d1bf4d48f3c1
jupyterlab  |      or http://127.0.0.1:8888/lab?token=2be040656cfe985c929e4f55e837438a3459d1bf4d48f3c1
```

No right click on any ipynb file and select "Open With", Chose "Jupyter Notebook"
Enter the URL above to connet and start coding

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


