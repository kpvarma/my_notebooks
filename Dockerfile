# Use an official JupyterLab base image with Python 3.8
FROM jupyter/base-notebook:python-3.8


USER root
# Install gcc and g++
RUN apt-get update && apt-get install -y gcc g++
# Install GEOS development libraries and headers
RUN apt-get install -y libgeos-dev libgl1-mesa-glx libglib2.0-0
USER $NB_UID


# Install additional libraries, including PySpark
RUN pip install pandas numpy scipy scikit-learn seaborn matplotlib==3.4.3 
RUN pip install xgboost boto3 fsspec nltk geos cartopy 
RUN pip install tensorflow opencv-python

# Set JupyterLab as the default notebook interface
ENV JUPYTER_ENABLE_LAB=yes
