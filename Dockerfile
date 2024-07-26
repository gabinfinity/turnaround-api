FROM python:3

# Install dependencies:
WORKDIR /turnaroundapiapp
    
# Copie o restante da aplicação para o contêiner
COPY . .
RUN pip install -r requirements.txt
RUN playwright install
RUN playwright install-deps
# Run the application:
CMD ["python", "main.py"]
