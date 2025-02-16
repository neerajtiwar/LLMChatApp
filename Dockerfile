FROM python:3.11-slim
ENV PYTHONPATH=/app
WORKDIR ${PYTHONPATH}
COPY requirement.txt .
RUN pip3 install -r requirement.txt
COPY app.py .
CMD streamlit run app.py
EXPOSE 8002
