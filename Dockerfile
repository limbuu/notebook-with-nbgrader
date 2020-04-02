FROM jupyter/base-notebook

## Add nbgrader
RUN pip install nbgrader

## Install nbgrader extensions
RUN jupyter nbextension install --sys-prefix --py nbgrader --overwrite
RUN jupyter nbextension enable --sys-prefix --py nbgrader
RUN jupyter serverextension enable --sys-prefix --py nbgrader

## Add the nbgrader_config.py 
RUN mkdir -p /home/$NB_USER/.jupyter
ADD ./nbgrader/nbgrader_config.py  /home/$NB_USER/.jupyter/nbgrader_config.py

## Add exchange directory 
RUN mkdir /tmp/exchange
RUN mkdir -p /tmp/exchange/ai_course_id/outbound
RUN mkdir -p /tmp/exchange/ai_course_id/inbound
RUN chmod ugo+rw /tmp/exchange

# make a directory ai-scholarship-program 
RUN mkdir -p /home/$NB_USER/ai-scholarship-program/source
RUN mkdir -p /home/$NB_USER/ai-scholarship-program/release
RUN touch /home/$NB_USER/ai-scholarship-program/gradebook.db

